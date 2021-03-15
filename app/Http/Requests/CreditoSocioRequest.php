<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreditoSocioRequest extends FormRequest
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
            'selezionati' => 'required',
            'importo' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'selezionati.required' => 'Deve essere selezionato almento un socio',
            'importo.required' => 'Deve essere selezionato un importo',
        ];
    }
}
