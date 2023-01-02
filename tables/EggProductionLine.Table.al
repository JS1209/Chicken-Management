table 50104 "Egg Production Line"
{
    DataClassification = CustomerContent;
    DrillDownPageId = 50107;
    Caption = 'Egg Production Line';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document number';
        }
        field(2; "Line No."; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Line number';
        }
        field(3; "Chicken No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Chicken";
            trigger OnValidate()
            begin
                CalcFields("Chicken Description");
            end;
        }
        field(4; "Chicken Description"; Text[100])
        {
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Chicken".Description
                            where("No." = Field("Chicken No.")));
            Caption = 'Description of the chicken';
        }
        field(5; "Egg Production Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Production date of the eggs';
        }
        field(6; "Egg Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Type of eggs';
            TableRelation = "Egg Type";
            trigger OnValidate()
            begin
                CalcFields("Egg Type Description");
            end;
        }
        field(7; "Egg Type Description"; Text[100])
        {
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Egg Type".Description
                                    where(Code = Field("Egg Type Code")));
        }
        field(8; Quantity; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'The amount of eggs produced';
        }
    }

    keys
    {
        key(Pk; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}