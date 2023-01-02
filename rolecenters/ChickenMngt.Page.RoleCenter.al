page 50108 "Chicken Management Rolecenter"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(RoleCenter)
        {
            part(HeadLineOrderProcessor; "Headline RC Order Processor")
            {
                ApplicationArea = All;
            }
            part(O365CustomerActivity; "O365 Customer Activity Page")
            {
                ApplicationArea = All;
            }
            part(O365Activities; "O365 Activities")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(MasterData)
            {
                Caption = 'Master Data';
                Image = RegisteredDocs;
                action(ChickenList)
                {
                    ApplicationArea = All;
                    Caption = 'Chicken List';
                    RunObject = Page "Chicken List";
                }
                action(ChickenTypes)
                {
                    ApplicationArea = All;
                    Caption = 'Chicken Types';
                    RunObject = Page "Chicken Types";
                }
            }
            group(Documents)
            {
                action(EggProduction)
                {
                    ApplicationArea = All;
                    Caption = 'Egg Production';
                    RunObject = Page "Egg Production List";
                }
                action(EggTypes)
                {
                    ApplicationArea = All;
                    Caption = 'Egg Types';
                    RunObject = Page "Egg Types";
                }
            }
        }
        area(Embedding)
        {
            action(eChickenList)
            {
                ApplicationArea = All;
                Caption = 'Chicken List';
                RunObject = Page "Chicken List";
            }
            action(eChickenTypes)
            {
                ApplicationArea = All;
                Caption = 'Chicken Types';
                RunObject = Page "Chicken Types";
            }
            action(eEggProduction)
            {
                ApplicationArea = All;
                Caption = 'Egg Production';
                RunObject = Page "Egg Production List";
            }
            action(eEggTypes)
            {
                ApplicationArea = All;
                Caption = 'Egg Types';
                RunObject = Page "Egg Types";
            }
        }
    }

    var
        myInt: Integer;
}