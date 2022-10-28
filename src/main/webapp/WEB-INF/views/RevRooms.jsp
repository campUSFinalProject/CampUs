<section id="section-main" class="section-reservation">
    <div class="w800">
        <div id="status-track">
            <a class="complete" href="#">
                <i class="fa fa-check-circle-o"></i>
                <div class="lbl">Dates</div>
                <div class="sub">DEC 12 - DEC 13</div>
            </a>
            <a class="current" href="#"><i class="fa fa-th-list"> </i>
                <div class="lbl">Rooms</div>
            </a>
            <a class="future" href="#"><i class="fa fa-users"></i>
                <div class="lbl">Payment</div>
            </a>
            <a class="future" href="#"><i class="fa fa-users"></i>
                <div class="lbl">Guest Info</div>
            </a>
        </div>

        <form action="#">
            <div class="split field">
                <div>
                    <label for="numadults">Adults</label>
                    <input type="number" id="numadults" />
                </div>
                <div>
                    <label for="numchildren">Children</label>
                    <input type="number" id="numchildren" />
                </div>

            </div>
            <label>Filter By Room Type</label>
            <ul id="room-types-container">
                <li class="rc is-selected" data-filter="*">
                    All
                </li>
                <li class="rc" data-filter=".rt1">
                    NQ1
                </li>
                <li class="rc" data-filter=".rt2">
                    NK1
                </li>
                <li class="rc" data-filter=".rt3">
                    Q1
                </li>
                <li class="rc" data-filter=".rt4">
                    K1
                </li>
            </ul>

            <label>Room Number</label>
            <ul id="rooms-container">
                <li class="rc rt1">
                    <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="101" />
                    <div class="rn">101</div>
                    <div class="rp">$125.00</div>
                </li>
                <li class="rc rt1">
                    <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="102" />
                    <div class="rn">102</div>
                    <div class="rp">$125.00</div>
                </li>
                <li class="rc rt1">
                    <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="103" />
                    <div class="rn">103</div>
                    <div class="rp">$125.00</div>
                </li>
                <li class="rc rt2">
                    <input type="radio" name="reservation[room_id]" data-room-price="145" class="hide" value="104" />
                    <div class="rn">104</div>
                    <div class="rp">$145.00</div>
                </li>
                <li class="rc rt3">
                    <input type="radio" name="reservation[room_id]" data-room-price="175" class="hide" value="105" />
                    <div class="rn">105</div>
                    <div class="rp">$175.00</div>
                </li>
                <li class="rc rt2">
                    <input type="radio" name="reservation[room_id]" data-room-price="145" class="hide" value="106" />
                    <div class="rn">106</div>
                    <div class="rp">$145.00</div>
                </li>
                <li class="rc rt1">
                    <input type="radio" name="reservation[room_id]" data-room-price="125" class="hide" value="107" />
                    <div class="rn">107</div>
                    <div class="rp">$125.00</div>
                </li>
                <li class="rc rt4">
                    <input type="radio" name="reservation[room_id]" data-room-price="195" class="hide" value="108" />
                    <div class="rn">108</div>
                    <div class="rp">$195.00</div>
                </li>
                <li class="rc rt4">
                    <input type="radio" name="reservation[room_id]" data-room-price="195" class="hide" value="109" />
                    <div class="rn">109</div>
                    <div class="rp">$195.00</div>
                </li>
                <li class="rc rt3">
                    <input type="radio" name="reservation[room_id]" data-room-price="165" class="hide" value="110" />
                    <div class="rn">110</div>
                    <div class="rp">$165.00</div>
                </li>
            </ul>

            <label>Price</label>
            <div class="display-price">
                <div class="dp-row">
                    <div class="col1"><b>ROOM</b></div>
                    <div class="col2">
                        <input type="text" id="reservation_rate" />
                    </div>
                </div>
                <div class="dp-row">
                    <div class="col1">TAX (10%)</div>
                    <div class="col2">
                        <input type="text" id="reservation_tax" />
                    </div>
                </div>
                <div class="dp-row">
                    <div class="col1"><b>TOTAL</b></div>
                    <div class="col2">
                        <input type="text" id="reservation_total" />
                    </div>
                </div>
            </div>

            <div class="spacer"></div>
            <div class="actions">
                <div><a href="">Cancel</a></div>
                <div><a class="btn btn-aqua" href="#"><i class="fa fa-angle-left fa"></i> Back</a><a class="btn btn-aqua spacer-v" href="#">Continue <i class="fa fa-angle-right fa"></i></a></div>
            </div>
        </form>
    </div>
</section>