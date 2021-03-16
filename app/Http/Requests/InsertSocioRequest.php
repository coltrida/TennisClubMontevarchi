<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use function dd;

class InsertSocioRequest extends FormRequest
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
            'nome' => 'required|string|max:255',
            'cognome' => 'required|string|max:255',
            'anno' => 'required|max:4',
            'tipo' => 'required',
            'privilegi' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'nome.required' => 'Il nome non deve essere vuoto',
            'cognome.required' => 'Il cognome non deve essere vuoto',
            'anno.required' => 'anno non deve essere vuoto',
            'tipo.required' => 'il tipo è obbligatorio',
            'privilegi.required' => 'i privilegi sono obbligatori',
        ];
    }
}
