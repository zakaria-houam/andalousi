<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class Commandes extends Mailable
{
    use Queueable, SerializesModels;

    public $customer;
    public $products;

    /**
     * Create a new message instance.
     *
     * @param  array  $customer
     * @param  array  $products
     */
    public function __construct(array $customer, array $products)
    {
        $this->customer = $customer;
        $this->products = $products;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.Commande')->subject('Order Confirmation');;
    }
}
