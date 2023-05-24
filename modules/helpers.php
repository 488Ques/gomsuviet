<?php
function empties(...$fields)
{
    foreach ($fields as $field) {
        if (empty($field)) {
            return true;
        }
    }
    return false;
}

// Check whether a URL parameter exists
// Return its value if it does, otherwise returns empty string
function getURLParameter($parameter)
{
    return (!empty($_GET[$parameter])) ? $_GET[$parameter] : '';
}