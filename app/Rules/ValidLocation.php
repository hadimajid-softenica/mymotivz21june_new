<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class ValidLocation implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
//        dd($value, preg_match('/^[{\p{L}},\/\\-# ]+$/',$value));
//        return preg_match('/^[{\p{L}},\/\\\-# ]+$/',$value);
//        return preg_match('/^[\p{L},\/\\-# ]+$/',$value);
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Please enter valid location server side.';
    }
}
