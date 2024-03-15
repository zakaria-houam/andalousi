<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class OrderConfirmationMail extends Mailable
{
    public $details;
    public $label;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($details,$label)
    {
        $this->details = $details;
        $this->label = $label;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Order Parfume from Website')
                    ->view('myMail');
    }
}
