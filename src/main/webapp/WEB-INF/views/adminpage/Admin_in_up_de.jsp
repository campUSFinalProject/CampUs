<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사업자 관리 페이지</title>
</head>

<link href="../css/Admin_in_up_de.css" rel="stylesheet" type="text/css" />

<body>

<div class="container">
    <h1>Some Basic Form Styling</h1>

    <form>
        <div>
            <p>
                <label>
                    주소<br>
                    <input type="text" placeholder="Placeholder" value="Default value">
                </label>
            </p>
            <p>
                <label>
                    password<br>
                    <input type="password" placeholder="Password">
                </label>
            </p>
            <p>
                <label>
                    number<br>
                    <input type="number" placeholder="123456789">
                </label>
            </p>
            <p>
                <label>
                    email<br>
                    <input type="email" placeholder="something@email.com">
                </label>
            </p>
            <p>
                <label>
                    url<br>
                    <input type="url" placeholder="http://website.com">
                </label>
            </p>
            <p>
                <label>
                    tel<br>
                    <input type="tel" placeholder="(123) 456-7890">
                </label>
            </p>
            <p>
                <label>
                    search<br>
                    <input type="search"  placeholder="Search">
                </label>
            </p>
            <p>
                <label>
                    textarea<br>
                    <textarea rows="5" cols="40" placeholder="Your message. I'm afraid I still don't understand, sir. Maybe if we felt any human loss as keenly as we feel one of those close to us, human history would be far less bloody."></textarea>
                </label>
            </p>
            <p>
                <label>
                    date<br>
                    <input type="date">
                </label>
            </p>
            <p>
                <label>
                    datetime<br>
                    <input type="datetime">
                </label>
            </p>
            <p>
                <label>
                    datetime-local<br>
                    <input type="datetime-local">
                </label>
            </p>
            <p>
                <label>
                    month<br>
                    <input type="month">
                </label>
            </p>
            <p>
                <label>
                    week<br>
                    <input type="week">
                </label>
            </p>
            <p>
                <label>
                    time<br>
                    <input type="time">
                </label>
            </p>
            <p>
                <label>
                    select<br>
                    <select>
                        <option value="" disabled selected>Select...</option>
                        <option>This is option 1</option>
                        <option>This is option 2</option>
                        <option>This is option 3</option>
                    </select>
                </label>
            </p>
            <p>
                <label>
                    select (multiple attr)<br>
                    <select multiple>
                        <option>This is option 1</option>
                        <option>This is option 2</option>
                        <option>This is option 3</option>
                    </select>
                </label>
            </p>
            <p>
                <label>
                    select (size attr)<br>
                    <select size="2">
                        <option>This is option 1</option>
                        <option>This is option 2</option>
                        <option>This is option 3</option>
                    </select>
                </label>
            </p>
            <p>
                <label>
                    datalist (Start typing This...)<br>
                    <input list="datalist">
                    <datalist id="datalist">
                        <option>This is option 1</option>
                        <option>This is option 2</option>
                        <option>This is option 3</option>
                    </datalist>
                </label>
            </p>
            <p>
                <label>
                    keygen<br>
                    <keygen>
                </label>
            </p>
            <p>
                <label>
                    output<br>
                    <output>123</output>
                </label>
            </p>
            <p>
                <input type="radio" name="radio" value="Radio 1" id="rad1"><label for="rad1">Radio 1</label><br>
                <input type="radio" name="radio" value="Radio 2" id="rad2"><label for="rad2">Radio 2</label><br>
                <input type="radio" name="radio" value="Radio 3" id="rad3"><label for="rad3">Radio 3</label><br>
            </p>
            <p>
                <input type="checkbox" name="checkbox" value="Checkbox 1" id="cb1"><label for="cb1">Checkbox 1</label><br>
                <input type="checkbox" name="checkbox" value="Checkbox 2" id="cb2"><label for="cb2">Checkbox 2</label><br>
                <input type="checkbox" name="checkbox" value="Checkbox 3" id="cb3"><label for="cb3">Checkbox 3</label><br>
            </p>
            <p>
                <label>color</label>
                <input type="color">
            </p>
            <p>
                <label>
                    range<br>
                    <input type="range" id="rangeSlider" min="0" max="100" step="10" onchange="printValue('rangeSlider', 'rangeValue')">
                    <input type="text" id="rangeValue" size="3">
                </label>
            </p>
            <p>
                <input type="file" name="file" id="file">
            </p>
            <p>
                <input type="submit">
            </p>
            <p>
                <input type="reset">
            </p>
            <p>
                <input type="button" value="Button (input tag)">
            </p>
            <p>
                <button>Button (button tag)</button>
            </p>
        </div>
        <fieldset>
            <legend>Legend</legend>
            Fieldset
        </fieldset>
    </form>
</div>

<script type="text/javascript" src= "../js/Admin_in_up_de.js"></script>
</body>
</html>