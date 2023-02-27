<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Models\User;
use App\Models\Connote;
use App\Models\Transaction;
use Illuminate\Auth\Authenticatable;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class PackageTest extends TestCase
{
    use WithFaker;
    use Authenticatable;


    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testAcccessPackageWithOutLogin()
    {
        $this->json('POST', 'api/package', ['Accept' => 'application/json'])
            ->assertStatus(401)
            ->assertJson([
                "message" => "Unauthenticated."
            ]);
    }

    public function testRequiredFieldsForCreatePackage()
    {
        
        $this->actingAs(User::find(1))
        ->json('POST', 'api/package', ['Accept' => 'application/json'])
        ->assertStatus(400)
            ->assertJson([
                "status" => "error",
                "message" => [
                    "customer_id" => [
                        "The customer id field is required."
                    ],
                    "transaction_amount" => [
                        "The transaction amount field is required."
                    ],
                    "transaction_payment_type" => [
                        "The transaction payment type field is required."
                    ],
                    "transaction_state" => [
                        "The transaction state field is required."
                    ],
                    "transaction_code" => [
                        "The transaction code field is required."
                    ],
                    "transaction_order" => [
                        "The transaction order field is required."
                    ],
                    "location_id" => [
                        "The location id field is required."
                    ],
                    "organization_id" => [
                        "The organization id field is required."
                    ],
                    "transaction_payment_type_name" => [
                        "The transaction payment type name field is required."
                    ],
                    "connote_id" => [
                        "The connote id field is required."
                    ],
                    "origin_data_id" => [
                        "The origin data id field is required."
                    ],
                    "destination_data_id" => [
                        "The destination data id field is required."
                    ],
                    "koli_data" => [
                        "The koli data field is required."
                    ]
                ] 
            ]);
    }

    public function testInvalidDataForCreatePackage()
    {
        $transactionData = [
            "customer_id"=>"1",
            "transaction_amount"=>100000,
            "transaction_discount"=>0,
            "transaction_additional_field"=>null,
            "transaction_payment_type"=>"29",
            "transaction_state"=>"PAID",
            "transaction_code"=>"ASBJN953",
            "transaction_order"=>121,
            "location_id"=>"2",
            "organization_id"=>"3",
            "transaction_payment_type_name"=>"Invoice",
            "transaction_cash_amount"=>0,
            "transaction_cash_change"=>0,
            "connote_id"=>"4",
            "origin_data_id"=>"5",
            "destination_data_id"=>"6",
            "custom_field"=>[
                "catatan_tambahan"=>"JANGAN DI BANTING DAN DI TINDIH",
            ],
            "koli_data"=>[
                [
                    "koli_id"=>"0577b5ab-6368-4dd0-9c4d-f0ea35935f1e",
                    "connote_id"=>"1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca",
                    "koli_length"=>100,
                    "awb_url"=>"https://tracking.mile.app/label/AWB00100209082020.2.123",
                    "koli_chargeable_weight"=>9,
                    "koli_width"=>200,
                    "koli_surcharge"=>null,
                    "koli_height"=>300,
                    "koli_description"=>"V WARP EDIT",
                    "koli_formula_id"=>null,
                    "koli_volume"=>0,
                    "koli_weight"=>9,
                    "koli_code"=>"AWB00126022023.1",
                    "koli_custom_field"=>[
                        "awb_sicepat"=>"TES",
                        "awb_sicepat2"=>"ABC",
                        "harga_barang"=>"500",
                        "catatan_tambahan"=>"JANGAN DI BANTING ATAU DI TINDIH"
                    ]
                ],
                [
                    "connote_id"=>"1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca",
                    "koli_length"=>100,
                    "awb_url"=>"https://tracking.mile.app/label/AWB00100209082020.2.456",
                    "koli_chargeable_weight"=>19,
                    "koli_width"=>2001,
                    "koli_surcharge"=>null,
                    "koli_height"=>3001,
                    "koli_description"=>"V WARP BARU",
                    "koli_formula_id"=>null,
                    "koli_volume"=>10,
                    "koli_weight"=>10,
                    "koli_code"=>"AWB00126022023.1",
                    "koli_custom_field"=>[
                        "awb_sicepat"=>"TES",
                        "catatan_tambahan"=>"JANGAN DI BANTING ATAU DI TINDIH"
                    ]
                ]
            ]
            
        ];
        
        $this->actingAs(User::find(1))
        ->json('POST', 'api/package', $transactionData, ['Accept' => 'application/json'])
        ->assertStatus(400)
        ->assertJson([
            "status" => "error",
            "message"=> [
                "customer_id"=> [
                    "The selected customer id is invalid."
                ],
                "location_id"=> [
                    "The selected location id is invalid."
                ],
                "organization_id"=> [
                    "The selected organization id is invalid."
                ],
                "connote_id"=> [
                    "The selected connote id is invalid."
                ],
                "origin_data_id"=> [
                    "The selected origin data id is invalid."
                ],
                "destination_data_id"=> [
                    "The selected destination data id is invalid."
                ]
            ]
        ]);
    }

    public function testUniqueDataForCreatePackage()
    {
        $transactionData =[
            "customer_id"=>"48e3e486-963b-4c04-8a63-3373bb908689",
            "transaction_amount"=>"100000",
            "transaction_discount"=>"0",
            "transaction_additional_field"=>"",
            "transaction_payment_type"=>"29",
            "transaction_state"=>"PAID",
            "transaction_code"=>"ASBJN953",
            "transaction_order"=>121,
            "location_id"=>"f9d6000e-7c45-41f8-a515-d638a216d449",
            "organization_id"=>"e33a29e3-fe9e-4f6b-a25e-a4943cf128d2",
            "transaction_payment_type_name"=>"Invoice",
            "transaction_cash_amount"=>0,
            "transaction_cash_change"=>0,
            "origin_data_id"=>"fde2da10-643f-451d-bc6f-6c538714deec",
            "destination_data_id"=>"36e59517-c6b6-4dd7-848d-a6eedc233e46",
            "connote_id"=>"1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca",
            "koli_data"=>[
                [
                    "koli_length"=>0,
                    "awb_url"=>"https:\/\/tracking.mile.app\/label\/AWB00100209082020.2",
                    "koli_chargeable_weight"=>9,
                    "koli_width"=>0,
                    "koli_surcharge"=>null,
                    "koli_height"=>0,
                    "koli_description"=>"V WARP",
                    "koli_formula_id"=>null,
                    "koli_volume"=>0,
                    "koli_weight"=>9,
                    "koli_custom_field"=>[
                        "awb_sicepat"=>"TES",
                        "harga_barang"=>"20000"
                    ]
                ]
            ],
            "custom_field"=>[
                "catatan_tambahan"=>"JANGAN DI BANTING \/ DI TINDIH"
            ]
        ];
        
        $this->actingAs(User::find(1))
        ->json('POST', 'api/package', $transactionData, ['Accept' => 'application/json'])
        ->assertStatus(400)
        ->assertJson([
            "status" => "error",
            "message"=> [
                "transaction_code"=> [
                    "The transaction code has already been taken."
                ],
                "connote_id"=> [
                    "The connote id has already been taken."
                ]
            ]
        ]);
    }

    public function testSuccessForCreatePackage()
    {

        $connoteData = [
            "connote_code" => $this->faker->postcode,
            "connote_number"=>1,
            "connote_service"=>"ECO",
            "connote_service_price"=>70700,
            "connote_amount"=>70700,
            "connote_booking_code"=>"",
            "connote_order"=>326931,
            "connote_state" => "PAID",
            "connote_state_id"=>"ea908603-f04e-4b21-9a5c-192f99b99994",
            "zone_code_from"=>"CGKFT",
            "zone_code_to"=>"SMG",
            "surcharge_amount"=>null,
            "actual_weight"=>20,
            "volume_weight"=>0,
            "chargeable_weight"=>20,
            "connote_total_package"=>"3",
            "connote_surcharge_amount"=>"0",
            "connote_sla_day"=>"4",
            "source_tariff_db"=>"tariff_customers",
            "id_source_tariff"=>"1576868",
            "pod"=>null
        ];

        $connote = Connote::create($connoteData);

        if($connote){
            $transactionData =[
                "customer_id"=>"48e3e486-963b-4c04-8a63-3373bb908689",
                "transaction_amount"=>10000,
                "transaction_discount"=>0,
                "transaction_additional_field"=>"",
                "transaction_payment_type"=>29,
                "transaction_state"=>"PAID",
                "transaction_code"=>'ABCDE'.$this->generateRandomString(10),
                "transaction_order"=>121,
                "location_id"=>"f9d6000e-7c45-41f8-a515-d638a216d449",
                "organization_id"=>"e33a29e3-fe9e-4f6b-a25e-a4943cf128d2",
                "transaction_payment_type_name"=>"Invoice",
                "transaction_cash_amount"=>0,
                "transaction_cash_change"=>0,
                "origin_data_id"=>"fde2da10-643f-451d-bc6f-6c538714deec",
                "destination_data_id"=>"36e59517-c6b6-4dd7-848d-a6eedc233e46",
                "connote_id"=>$connote->connote_id,
                "koli_data"=>[
                    [
                        "koli_length"=>0,
                        "awb_url"=>"https://tracking.mile.app/label/AWB00100209082020.1",
                        "koli_chargeable_weight"=>9,
                        "koli_width"=>0,
                        "koli_surcharge"=>null,
                        "koli_height"=>0,
                        "koli_description"=>"V WARP",
                        "koli_formula_id"=>null,
                        "koli_volume"=>0,
                        "koli_weight"=>9,
                        "koli_custom_field"=>[
                            "awb_sicepat"=>"TES",
                            "harga_barang"=>"20000"
                        ]
                    ]
                ],
                "custom_field"=> [
                    "catatan_tambahan"=> "JANGAN DI BANTING DAN DI TINDIH",
                    "catatan_baru"=>"Barang Kaca dan Barang Baru"
                ]
            ];

            $this->actingAs(User::find(1))
            ->json('POST', 'api/package', $transactionData, ['Accept' => 'application/json'])
            ->assertStatus(200)
            ->assertJsonStructure([
                "status",
                "data",
            ]);
        }

    }

    function generateRandomString($length = 10) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[random_int(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    public function testSuccessGetAllPackage()
    {
        $this->actingAs(User::find(1))
        ->json('GET', 'api/package', ['Accept' => 'application/json'])
        ->assertStatus(200)
            ->assertJsonStructure([
                "status",
                "data" => [
                    "current_page",
                    "data",
                    "first_page_url",
                    "from",
                    "last_page",
                    "last_page_url",
                    "links",
                    "next_page_url",
                    "path",
                    "per_page",
                    "prev_page_url",
                    "to",
                    "total"
                ],
            ]);
    }

    public function testFailedGetPackageById()
    {
        $this->actingAs(User::find(1))
        ->json('GET', 'api/package/123', ['Accept' => 'application/json'])
        ->assertStatus(404)
            ->assertJson([
                "status" => "error",
                "message" => "package not found"
            ]);
    }

    public function testSuccessGetPackageById()
    {
        $this->actingAs(User::find(1))
        ->json('GET', 'api/package/940899a4-4d5c-4812-a41b-0a85fc419779', ['Accept' => 'application/json'])
        ->assertStatus(200)
            ->assertJsonStructure([
                "status",
                "data" => [
                    "transaction_id",
                    "customer_id",
                    "transaction_amount",
                    "transaction_discount",
                    "transaction_additional_field",
                    "transaction_payment_type",
                    "transaction_state",
                    "transaction_code",
                    "transaction_order",
                    "location_id",
                    "organization_id",
                    "transaction_payment_type_name",
                    "transaction_cash_amount",
                    "transaction_cash_change",
                    "connote_id",
                    "origin_data_id",
                    "destination_data_id",
                    "created_at",
                    "updated_at",
                    "customer_name",
                    "customer_code",
                    "customer_attribute",
                    "koli_data",
                    "custom_field",
                    "currentLocation" => [
                        "name",
                        "code",
                        "type",
                    ],
                    "connote" => [
                        "connote_id",
                        "connote_number",
                        "connote_service",
                        "connote_service_price",
                        "connote_amount",
                        "connote_code",
                        "connote_booking_code",
                        "connote_order",
                        "connote_state",
                        "connote_state_id",
                        "zone_code_from",
                        "zone_code_to",
                        "surcharge_amount",
                        "actual_weight",
                        "volume_weight",
                        "chargeable_weight",
                        "connote_total_package",
                        "connote_surcharge_amount",
                        "connote_sla_day",
                        "source_tariff_db",
                        "id_source_tariff",
                        "pod",
                        "created_at",
                        "updated_at",
                        "location_name",
                        "location_type",
                        "history"
                    ],
                    "origin_data" => [
                        "origin_data_id",
                        "zone_code",
                        "customer_id",
                        "location_id",
                        "organization_id",
                        "customer" => [
                            "customer_id",
                            "customer_name",
                            "customer_code",
                            "customer_address",
                            "customer_email",
                            "customer_phone",
                            "customer_address_detail",
                            "customer_zip_code",
                        ]
                    ],
                    "destination_data" => [
                        "destination_data_id",
                        "zone_code",
                        "customer_id",
                        "location_id",
                        "organization_id",
                        "customer" => [
                            "customer_id",
                            "customer_name",
                            "customer_code",
                            "customer_address",
                            "customer_email",
                            "customer_phone",
                            "customer_address_detail",
                            "customer_zip_code",
                        ]
                    ]
                ]
            ]);
    }

    public function testFailedPatchPackage()
    {
        $this->actingAs(User::find(1))
        ->json('PATCH', 'api/package/123', ['Accept' => 'application/json'])
        ->assertStatus(404)
            ->assertJson([
                "status" => "error",
                "message" => "transaction not found"
            ]);
    }

    public function testSuccessPatchPackage()
    {
        $transactionData = [
            "transaction_amount" => 330000,
            "transaction_discount" => 0,
            "transaction_payment_type" => "59",
            "transaction_state" => "PAID",
            "transaction_order" => 1201,
            "location_id" => "9831d2ef-fe02-4ab3-86c2-f6c59b7e1116",
            "custom_field" => [
                "catatan_baru" =>"BARANG MUDAH PECAH"
            ]
        ];

        $this->actingAs(User::find(1))
        ->json('PATCH', 'api/package/940899a4-4d5c-4812-a41b-0a85fc419779', $transactionData, ['Accept' => 'application/json'])
        ->assertStatus(200)
        ->assertJsonStructure([
            "status",
            "data" => [
                "transaction_id",
                "customer_id",
                "transaction_amount",
                "transaction_discount",
                "transaction_additional_field",
                "transaction_payment_type",
                "transaction_state",
                "transaction_code",
                "transaction_order",
                "location_id",
                "organization_id",
                "transaction_payment_type_name",
                "transaction_cash_amount",
                "transaction_cash_change",
                "connote_id",
                "origin_data_id",
                "destination_data_id",
                "created_at",
                "updated_at",
                "customer_name",
                "customer_code",
                "customer_attribute",
                "koli_data",
                "custom_field",
                "currentLocation" => [
                    "name",
                    "code",
                    "type",
                ],
                "connote" => [
                    "connote_id",
                    "connote_number",
                    "connote_service",
                    "connote_service_price",
                    "connote_amount",
                    "connote_code",
                    "connote_booking_code",
                    "connote_order",
                    "connote_state",
                    "connote_state_id",
                    "zone_code_from",
                    "zone_code_to",
                    "surcharge_amount",
                    "actual_weight",
                    "volume_weight",
                    "chargeable_weight",
                    "connote_total_package",
                    "connote_surcharge_amount",
                    "connote_sla_day",
                    "source_tariff_db",
                    "id_source_tariff",
                    "pod",
                    "created_at",
                    "updated_at",
                    "location_name",
                    "location_type",
                    "history"
                ],
                "origin_data" => [
                    "origin_data_id",
                    "zone_code",
                    "customer_id",
                    "location_id",
                    "organization_id",
                    "customer" => [
                        "customer_id",
                        "customer_name",
                        "customer_code",
                        "customer_address",
                        "customer_email",
                        "customer_phone",
                        "customer_address_detail",
                        "customer_zip_code",
                    ]
                ],
                "destination_data" => [
                    "destination_data_id",
                    "zone_code",
                    "customer_id",
                    "location_id",
                    "organization_id",
                    "customer" => [
                        "customer_id",
                        "customer_name",
                        "customer_code",
                        "customer_address",
                        "customer_email",
                        "customer_phone",
                        "customer_address_detail",
                        "customer_zip_code",
                    ]
                ]
            ]
        ]);
    }

    public function testFailedPutPackage()
    {
        $transactionData = [
            "customer_id"=>"48e3e486-963b-4c04-8a63-3373bb908689",
            "transaction_amount"=>100000,
            "transaction_discount"=>0,
            "transaction_additional_field"=>null,
            "transaction_payment_type"=>"29",
            "transaction_state"=>"PAID",
            "transaction_code"=>"ASBJN953",
            "transaction_order"=>121,
            "location_id"=>"f9d6000e-7c45-41f8-a515-d638a216d449",
            "organization_id"=>"e33a29e3-fe9e-4f6b-a25e-a4943cf128d2",
            "transaction_payment_type_name"=>"Invoice",
            "transaction_cash_amount"=>0,
            "transaction_cash_change"=>0,
            "connote_id"=>"1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca",
            "origin_data_id"=>"fde2da10-643f-451d-bc6f-6c538714deec",
            "destination_data_id"=>"36e59517-c6b6-4dd7-848d-a6eedc233e46",
            "custom_field"=>[
                "catatan_tambahan"=>"JANGAN DI BANTING DAN DI TINDIH",
            ],
            "koli_data"=>[
                [
                    "koli_id"=>"0577b5ab-6368-4dd0-9c4d-f0ea35935f1e",
                    "connote_id"=>"1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca",
                    "koli_length"=>100,
                    "awb_url"=>"https://tracking.mile.app/label/AWB00100209082020.2.123",
                    "koli_chargeable_weight"=>9,
                    "koli_width"=>200,
                    "koli_surcharge"=>null,
                    "koli_height"=>300,
                    "koli_description"=>"V WARP EDIT",
                    "koli_formula_id"=>null,
                    "koli_volume"=>0,
                    "koli_weight"=>9,
                    "koli_code"=>"AWB00126022023.1",
                    "koli_custom_field"=>[
                        "awb_sicepat"=>"TES",
                        "awb_sicepat2"=>"ABC",
                        "harga_barang"=>"500",
                        "catatan_tambahan"=>"JANGAN DI BANTING ATAU DI TINDIH"
                    ]
                ],
                [
                    "connote_id"=>"1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca",
                    "koli_length"=>100,
                    "awb_url"=>"https://tracking.mile.app/label/AWB00100209082020.2.456",
                    "koli_chargeable_weight"=>19,
                    "koli_width"=>2001,
                    "koli_surcharge"=>null,
                    "koli_height"=>3001,
                    "koli_description"=>"V WARP BARU",
                    "koli_formula_id"=>null,
                    "koli_volume"=>10,
                    "koli_weight"=>10,
                    "koli_code"=>"AWB00126022023.1",
                    "koli_custom_field"=>[
                        "awb_sicepat"=>"TES",
                        "catatan_tambahan"=>"JANGAN DI BANTING ATAU DI TINDIH"
                    ]
                ]
            ]
            
        ];

        $this->actingAs(User::find(1))
        ->json('PUT', 'api/package/1', $transactionData, ['Accept' => 'application/json'])
        ->assertStatus(404)
            ->assertJson([
                "status" => "error",
                "message" => "transaction not found"
            ]);
    }

    public function testRequiredPutPackage()
    {
        $this->actingAs(User::find(1))
        ->json('PUT', 'api/package/1', ['Accept' => 'application/json'])
        ->assertStatus(400)
            ->assertJson([
                "status" => "error",
                "message"=> [
                    "customer_id"=> [
                        "The customer id field is required."
                    ],
                    "transaction_amount"=> [
                        "The transaction amount field is required."
                    ],
                    "transaction_payment_type"=> [
                        "The transaction payment type field is required."
                    ],
                    "transaction_state"=> [
                        "The transaction state field is required."
                    ],
                    "transaction_order"=> [
                        "The transaction order field is required."
                    ],
                    "location_id"=> [
                        "The location id field is required."
                    ],
                    "organization_id"=> [
                        "The organization id field is required."
                    ],
                    "transaction_payment_type_name"=> [
                        "The transaction payment type name field is required."
                    ],
                    "connote_id"=> [
                        "The connote id field is required."
                    ],
                    "origin_data_id"=> [
                        "The origin data id field is required."
                    ],
                    "destination_data_id"=> [
                        "The destination data id field is required."
                    ],
                    "koli_data"=> [
                        "The koli data field is required."
                    ],
                    "custom_field"=> [
                        "The custom field field is required."
                    ]
                ]
            ]);
    }

    public function testInvalidPutPackage()
    {
        $transactionData = [
            "customer_id"=>"1",
            "transaction_amount"=>100000,
            "transaction_discount"=>0,
            "transaction_additional_field"=>null,
            "transaction_payment_type"=>"29",
            "transaction_state"=>"PAID",
            "transaction_code"=>"ASBJN953",
            "transaction_order"=>121,
            "location_id"=>"2",
            "organization_id"=>"3",
            "transaction_payment_type_name"=>"Invoice",
            "transaction_cash_amount"=>0,
            "transaction_cash_change"=>0,
            "connote_id"=>"4",
            "origin_data_id"=>"5",
            "destination_data_id"=>"6",
            "custom_field"=>[
                "catatan_tambahan"=>"JANGAN DI BANTING DAN DI TINDIH",
            ],
            "koli_data"=>[
                [
                    "koli_id"=>"0577b5ab-6368-4dd0-9c4d-f0ea35935f1e",
                    "connote_id"=>"1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca",
                    "koli_length"=>100,
                    "awb_url"=>"https://tracking.mile.app/label/AWB00100209082020.2.123",
                    "koli_chargeable_weight"=>9,
                    "koli_width"=>200,
                    "koli_surcharge"=>null,
                    "koli_height"=>300,
                    "koli_description"=>"V WARP EDIT",
                    "koli_formula_id"=>null,
                    "koli_volume"=>0,
                    "koli_weight"=>9,
                    "koli_code"=>"AWB00126022023.1",
                    "koli_custom_field"=>[
                        "awb_sicepat"=>"TES",
                        "awb_sicepat2"=>"ABC",
                        "harga_barang"=>"500",
                        "catatan_tambahan"=>"JANGAN DI BANTING ATAU DI TINDIH"
                    ]
                ],
                [
                    "connote_id"=>"1e89de7b-71ee-4ccc-9afa-f5bb28abb2ca",
                    "koli_length"=>100,
                    "awb_url"=>"https://tracking.mile.app/label/AWB00100209082020.2.456",
                    "koli_chargeable_weight"=>19,
                    "koli_width"=>2001,
                    "koli_surcharge"=>null,
                    "koli_height"=>3001,
                    "koli_description"=>"V WARP BARU",
                    "koli_formula_id"=>null,
                    "koli_volume"=>10,
                    "koli_weight"=>10,
                    "koli_code"=>"AWB00126022023.1",
                    "koli_custom_field"=>[
                        "awb_sicepat"=>"TES",
                        "catatan_tambahan"=>"JANGAN DI BANTING ATAU DI TINDIH"
                    ]
                ]
            ]
            
        ];

        $this->actingAs(User::find(1))
        ->json('PUT', 'api/package/1', $transactionData, ['Accept' => 'application/json'])
        ->assertStatus(400)
            ->assertJson([
                "status" => "error",
                "message"=> [
                    "customer_id"=> [
                        "The selected customer id is invalid."
                    ],
                    "location_id"=> [
                        "The selected location id is invalid."
                    ],
                    "organization_id"=> [
                        "The selected organization id is invalid."
                    ],
                    "connote_id"=> [
                        "The selected connote id is invalid."
                    ],
                    "origin_data_id"=> [
                        "The selected origin data id is invalid."
                    ],
                    "destination_data_id"=> [
                        "The selected destination data id is invalid."
                    ]
                ]
            ]);
    }

    public function testSuccessPutPackage()
    {
        $transactionData = [
            "customer_id"=>"5b9e42a3-4fc2-4d31-988c-e0193fa11b64",
            "transaction_amount"=>50000,
            "transaction_discount"=>0,
            "transaction_additional_field"=>null,
            "transaction_payment_type"=>"39",
            "transaction_state"=>"PAID",
            "transaction_code"=>"5230592",
            "transaction_order"=>120,
            "location_id"=>"9831d2ef-fe02-4ab3-86c2-f6c59b7e1116",
            "organization_id"=>"eba16bdc-7929-4a99-bbfc-5946660aff99",
            "transaction_payment_type_name"=>"Invoice",
            "transaction_cash_amount"=>0,
            "transaction_cash_change"=>0,
            "connote_id"=>"d7759643-d5c5-41fa-acf5-8b5ea2900de5",
            "origin_data_id"=>"fde2da10-643f-451d-bc6f-6c538714deec",
            "destination_data_id"=>"a67a3345-86da-4855-b80c-7ef02d00a7a4",
            "custom_field"=>[
                "catatan_tambahan"=>"JANGAN DI BANTING DAN DI TINDIH",
                "catatan_baru"=> "Barang Kaca dan Barang Baru"
            ],
            "koli_data"=>[
                [
                    "koli_id"=>"54dca3af-b8c2-4196-a297-34f943f439a0",
                    "connote_id"=>"d7759643-d5c5-41fa-acf5-8b5ea2900de5",
                    "koli_length"=>0,
                    "awb_url"=>"https://tracking.mile.app/label/AWB00100209082020.1",
                    "koli_chargeable_weight"=>9,
                    "koli_width"=>0,
                    "koli_surcharge"=>null,
                    "koli_height"=>0,
                    "koli_description"=>"V WARP",
                    "koli_formula_id"=>null,
                    "koli_volume"=>0,
                    "koli_weight"=>9,
                    "koli_code"=>"AWB00426022023.1",
                    "created_at"=>"2023-02:26 14:39:12",
                    "updated_at"=>"2023-02:26 14:39:12",
                    "koli_custom_field"=>[
                        "harga_barang"=>null,
                        "awb_sicepat"=>null
                    ]
                ],
                [
                    "koli_id"=>"d467eef7-4101-4c26-b6f9-1e18d8a43580",
                    "connote_id"=>"d7759643-d5c5-41fa-acf5-8b5ea2900de5",
                    "koli_length"=>0,
                    "awb_url"=>"https://tracking.mile.app/label/AWB00100209082020.2",
                    "koli_chargeable_weight"=>9,
                    "koli_width"=>0,
                    "koli_surcharge"=>null,
                    "koli_height"=>0,
                    "koli_description"=>"V WARP",
                    "koli_formula_id"=>null,
                    "koli_volume"=>0,
                    "koli_weight"=>9,
                    "koli_code"=>"AWB00426022023.2",
                    "created_at"=>"2023-02:26 14:39:12",
                    "updated_at"=>"2023-02:26 14:39:12",
                    "koli_custom_field"=>[
                        "awb_sicepat"=>null,
                        "harga_barang"=>null
                    ]
                ]
            ]
            
        ];

        $this->actingAs(User::find(1))
        ->json('PUT', 'api/package/940899a4-4d5c-4812-a41b-0a85fc419779', $transactionData, ['Accept' => 'application/json'])
        ->assertStatus(200)
        ->assertJsonStructure([
            "status",
            "data" => [
                "transaction_id",
                "customer_id",
                "transaction_amount",
                "transaction_discount",
                "transaction_additional_field",
                "transaction_payment_type",
                "transaction_state",
                "transaction_code",
                "transaction_order",
                "location_id",
                "organization_id",
                "transaction_payment_type_name",
                "transaction_cash_amount",
                "transaction_cash_change",
                "connote_id",
                "origin_data_id",
                "destination_data_id",
                "created_at",
                "updated_at",
                "customer_name",
                "customer_code",
                "customer_attribute",
                "koli_data",
                "custom_field",
                "currentLocation" => [
                    "name",
                    "code",
                    "type",
                ],
                "connote" => [
                    "connote_id",
                    "connote_number",
                    "connote_service",
                    "connote_service_price",
                    "connote_amount",
                    "connote_code",
                    "connote_booking_code",
                    "connote_order",
                    "connote_state",
                    "connote_state_id",
                    "zone_code_from",
                    "zone_code_to",
                    "surcharge_amount",
                    "actual_weight",
                    "volume_weight",
                    "chargeable_weight",
                    "connote_total_package",
                    "connote_surcharge_amount",
                    "connote_sla_day",
                    "source_tariff_db",
                    "id_source_tariff",
                    "pod",
                    "created_at",
                    "updated_at",
                    "location_name",
                    "location_type",
                    "history"
                ],
                "origin_data" => [
                    "origin_data_id",
                    "zone_code",
                    "customer_id",
                    "location_id",
                    "organization_id",
                    "customer" => [
                        "customer_id",
                        "customer_name",
                        "customer_code",
                        "customer_address",
                        "customer_email",
                        "customer_phone",
                        "customer_address_detail",
                        "customer_zip_code",
                    ]
                ],
                "destination_data" => [
                    "destination_data_id",
                    "zone_code",
                    "customer_id",
                    "location_id",
                    "organization_id",
                    "customer" => [
                        "customer_id",
                        "customer_name",
                        "customer_code",
                        "customer_address",
                        "customer_email",
                        "customer_phone",
                        "customer_address_detail",
                        "customer_zip_code",
                    ]
                ]
            ]
        ]);
    }

    public function testFailedDeletedPackage()
    {
        $this->actingAs(User::find(1))
        ->json('DELETE', 'api/package/123', ['Accept' => 'application/json'])
        ->assertStatus(404)
            ->assertJson([
                "status" => "error",
                "message" => "transaction not found"
            ]);
    }

    public function testSuccessDeletedPackage()
    {
        $connoteData = [
            "connote_code" => $this->faker->postcode,
            "connote_number"=>1,
            "connote_service"=>"ECO",
            "connote_service_price"=>70700,
            "connote_amount"=>70700,
            "connote_booking_code"=>"",
            "connote_order"=>326931,
            "connote_state" => "PAID",
            "connote_state_id"=>"ea908603-f04e-4b21-9a5c-192f99b99994",
            "zone_code_from"=>"CGKFT",
            "zone_code_to"=>"SMG",
            "surcharge_amount"=>null,
            "actual_weight"=>20,
            "volume_weight"=>0,
            "chargeable_weight"=>20,
            "connote_total_package"=>"3",
            "connote_surcharge_amount"=>"0",
            "connote_sla_day"=>"4",
            "source_tariff_db"=>"tariff_customers",
            "id_source_tariff"=>"1576868",
            "pod"=>null
        ];

        $connote = Connote::create($connoteData);

        $transactionData =[
            "customer_id"=>"48e3e486-963b-4c04-8a63-3373bb908689",
            "transaction_amount"=>10000,
            "transaction_discount"=>0,
            "transaction_additional_field"=>"",
            "transaction_payment_type"=>29,
            "transaction_state"=>"PAID",
            "transaction_code"=>'ABCDE'.$this->generateRandomString(10),
            "transaction_order"=>121,
            "location_id"=>"f9d6000e-7c45-41f8-a515-d638a216d449",
            "organization_id"=>"e33a29e3-fe9e-4f6b-a25e-a4943cf128d2",
            "transaction_payment_type_name"=>"Invoice",
            "transaction_cash_amount"=>0,
            "transaction_cash_change"=>0,
            "origin_data_id"=>"fde2da10-643f-451d-bc6f-6c538714deec",
            "destination_data_id"=>"36e59517-c6b6-4dd7-848d-a6eedc233e46",
            "connote_id"=>$connote->connote_id,
        ];

        $transaction = Transaction::create($transactionData);

        $this->actingAs(User::find(1))
        ->json('DELETE', 'api/package/'.$transaction->transaction_id, ['Accept' => 'application/json'])
        ->assertStatus(200)
        ->assertJson([
            "status" => "success",
            "message" => "success deleted transaction"
        ]);
    }
    

}
