<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BookingAdminRequest extends FormRequest
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
            'giornoPartenza' => 'required',
            'giornoFine' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'giornoPartenza.required' => 'Il giorno di inizio è obbligatorio',
            'giornoFine.required' => 'Il giorno di fine è obbligatorio',
        ];
    }
}
