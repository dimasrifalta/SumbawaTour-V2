<?php
defined('BASEPATH') or exit('No direct script access allowed');

require_once('assets/plugins/dompdf/autoload.inc.php');

use Dompdf\Dompdf;


class Pdf extends Dompdf
{
    public function __construct()
    {
        parent::__construct();
        $dompdf = new Dompdf();
    }
}
