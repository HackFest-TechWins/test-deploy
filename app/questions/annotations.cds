using SupportService as service from '../../srv/services';
annotate service.Questions with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'question',
                Value : question,
            },
            {
                $Type : 'UI.DataField',
                Label : 'questionVector',
                Value : questionVector,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : answer_ID,
            Label : 'answer_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : question,
            Label : 'question',
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },
    ],
);

annotate service.Questions with {
    answer @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Answers',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : answer_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'answer',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Questions with {
    modifiedBy @Common.Text : createdBy
};

annotate service.Questions with {
    question @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Questions',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : question,
                    ValueListProperty : 'question',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};

annotate service.Answers with {
    ID @Common.Text : answer
};

