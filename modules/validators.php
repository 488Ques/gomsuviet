<?php
function validateStringLength($str, $min, $max)
{
    return $min <= strlen($str) && strlen($str) <= $max;
}

function validateEmail($email)
{
    return filter_var($email, FILTER_VALIDATE_EMAIL) != false ? true : false;
}
