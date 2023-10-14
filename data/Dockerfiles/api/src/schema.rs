// @generated automatically by Diesel CLI.

diesel::table! {
    admin (username) {
        #[max_length = 255]
        username -> Varchar,
        #[max_length = 255]
        password -> Varchar,
        superadmin -> Bool,
        created -> Datetime,
        modified -> Nullable<Datetime>,
        active -> Bool,
    }
}

diesel::table! {
    fido2 (rpId) {
        #[max_length = 255]
        username -> Varchar,
        #[max_length = 255]
        friendlyName -> Nullable<Varchar>,
        #[max_length = 255]
        rpId -> Varchar,
        credentialPublicKey -> Text,
        certificateChain -> Nullable<Text>,
        certificate -> Nullable<Text>,
        #[max_length = 255]
        certificateIssuer -> Nullable<Varchar>,
        #[max_length = 255]
        certificateSubject -> Nullable<Varchar>,
        signatureCounter -> Nullable<Integer>,
        AAGUID -> Nullable<Blob>,
        credentialId -> Blob,
        created -> Datetime,
        modified -> Nullable<Datetime>,
        active -> Bool,
    }
}

diesel::table! {
    versions (application) {
        #[max_length = 255]
        application -> Varchar,
        #[max_length = 100]
        version -> Varchar,
        created -> Datetime,
    }
}

diesel::allow_tables_to_appear_in_same_query!(
    admin,
    fido2,
    versions,
);
