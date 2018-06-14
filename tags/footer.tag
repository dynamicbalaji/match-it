<r-footer>
    <style>
        /*footer{
            position: fixed;
            bottom: 0px;
            width: 100%;
        }*/
    </style>
    <footer>
        <div class="footer-below">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <p>Please consider donating <kbd>$1</kbd>.<small>Your support can keep our passion alive.</small></p>
                    </div>
                    <div class="col-lg-6 text-center">
                        <div onclick={tezpayment} class="chip" style="cursor: pointer;">
                            <img src="static/img/tez_logo2.png" alt="Tez" width="96" height="96"> Tez
                        </div>
                        <a onclick={logPaypal} href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=KQJAX48SPUKNC" target="_blank"><img src="static/img/support_paypal.svg" width="200px"></a>
                        <a onclick={logPateron} href="https://www.patreon.com/bePatron?u=9531404"  target="_blank"><img src="static/img/support_patreon.svg" width="200px"></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script>
        logPateron(e){
            gtag('event', 'click', {
                'event_category': 'outbound',
                'event_label': "patreon",
                'transport_type': 'beacon',
            });
        }
        logPaypal(e){
            gtag('event', 'click', {
                'event_category': 'outbound',
                'event_label': "paypal",
                'transport_type': 'beacon',
            });
        }
        tezpayment(e){
            gtag('event', 'click', {
                'event_category': 'outbound',
                'event_label': "tez",
                'transport_type': 'beacon',
            });
            //ga('send', 'event', 'Outbound Link', 'click', 'tez');
            $.dialog({
                title: "Tez Payment",
                content: "<p>Please scan the below QR code</p>" + '<img src="static/img/tez_qrcode.png">'
            })
        }
    </script>

</r-footer>