<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CertificatoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'certificato' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'certificato.required' => 'la data della scadenza del certificato è obbligatoria'
        ];
    }
}
