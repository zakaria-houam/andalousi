function store_order_yalidine($id){
$p=get_product_list($id);
$order=CombinedOrder::findOrFail($id);

$address=json_decode($order->shipping_address);

$base_url="https://api.yalidine.app/v1/";
$nom=explode(" ",$order->user->name);
$familyname=$nom[1] ?? " ";
$data=
[

[
'order_id'=> $order->code,
'firstname'=>$nom[0],
'familyname'=>$familyname,
'contact_phone'=>$order->user->phone,
'address'=>$address->address ?? '',
'to_commune_name'=>$address->city,
'to_wilaya_name'=>$address->state,
'product_list'=>$p,
'price'=>$order->grand_total,
'freeshipping'=> true,
'is_stopdesk'=> false,
'has_exchange'=> 0,
'product_to_collect' => null



],

];
// return json_encode($data);


$response = Http::acceptJson()
->withHeaders([
'X-API-ID' => '86123009784091053148',
'X-API-TOKEN' => 'p9uW06n2lkesVKcGhLiI5YwtHSUc2uDbyZyjXvqXrtPGno1QB6Ui7Fj0hvaFkgMO'

])
->post($base_url."parcels/",$data );


$r=json_decode($response,true);
// dd($r);

foreach($r as $d) {
$ord=CombinedOrder::where('code',$d['order_id'])->first();


$ord->tracking_yalidine=$d['tracking'];
$ord->delivery_status="yalidine";
$ord->save();

}




}
}
