// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/http;

# 
# 
# The service enables you to create, read, update, and delete locations through an API call. You can perform these activities from a source system outside SAP S/4HANA Cloud.
# The service is based on the OData protocol.
public isolated client class Client {
    final http:Client clientEp;
    # Gets invoked to initialize the `connector`.
    #
    # + config - The configurations to be used when initializing the `connector` 
    # + serviceUrl - URL of the target service 
    # + return - An error if connector initialization failed 
    public isolated function init(ConnectionConfig config, string serviceUrl) returns error? {
        http:ClientConfiguration httpClientConfig = {auth: config.auth, httpVersion: config.httpVersion, timeout: config.timeout, forwarded: config.forwarded, poolConfig: config.poolConfig, compression: config.compression, circuitBreaker: config.circuitBreaker, retryConfig: config.retryConfig, validation: config.validation};
        do {
            if config.http1Settings is ClientHttp1Settings {
                ClientHttp1Settings settings = check config.http1Settings.ensureType(ClientHttp1Settings);
                httpClientConfig.http1Settings = {...settings};
            }
            if config.http2Settings is http:ClientHttp2Settings {
                httpClientConfig.http2Settings = check config.http2Settings.ensureType(http:ClientHttp2Settings);
            }
            if config.cache is http:CacheConfig {
                httpClientConfig.cache = check config.cache.ensureType(http:CacheConfig);
            }
            if config.responseLimits is http:ResponseLimitConfigs {
                httpClientConfig.responseLimits = check config.responseLimits.ensureType(http:ResponseLimitConfigs);
            }
            if config.secureSocket is http:ClientSecureSocket {
                httpClientConfig.secureSocket = check config.secureSocket.ensureType(http:ClientSecureSocket);
            }
            if config.proxy is http:ProxyConfig {
                httpClientConfig.proxy = check config.proxy.ensureType(http:ProxyConfig);
            }
        }
        http:Client httpEp = check new (serviceUrl, httpClientConfig);
        self.clientEp = httpEp;
        return;
    }

    # Delete entity from Location
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + headers - Headers to be sent with the request 
    # + return - Success 
    resource isolated function delete Location/[string LocationUUID](map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/Location/${getEncodedUri(LocationUUID)}`;
        return self.clientEp->delete(resourcePath, headers = headers);
    }

    # Delete entity from LocationText
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + Language - Language Key
    # + headers - Headers to be sent with the request 
    # + return - Success 
    resource isolated function delete LocationText/[string LocationUUID]/[string Language](map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/LocationText/${getEncodedUri(LocationUUID)}/${getEncodedUri(Language)}`;
        return self.clientEp->delete(resourcePath, headers = headers);
    }

    # Get entities from Location
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    resource isolated function get Location(map<string|string[]> headers = {}, *GetLocationQueries queries) returns Collection\ of\ Location_Type|error {
        string resourcePath = string `/Location`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get entity from Location by key
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    resource isolated function get Location/[string LocationUUID](map<string|string[]> headers = {}, *GetLocationLocationuuidQueries queries) returns com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.Location_Type|error {
        string resourcePath = string `/Location/${getEncodedUri(LocationUUID)}`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get related _LocationAddressTP
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    resource isolated function get Location/[string LocationUUID]/_LocationAddressTP(map<string|string[]> headers = {}, *GetLocationLocationuuid_locationaddresstpQueries queries) returns com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.LocationAddress_Type|error {
        string resourcePath = string `/Location/${getEncodedUri(LocationUUID)}/_LocationAddressTP`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get entities from related _LocationTextTP
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    resource isolated function get Location/[string LocationUUID]/_LocationTextTP(map<string|string[]> headers = {}, *GetLocationLocationuuid_locationtexttpQueries queries) returns Collection\ of\ LocationText_Type|error {
        string resourcePath = string `/Location/${getEncodedUri(LocationUUID)}/_LocationTextTP`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get entities from LocationAddress
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    resource isolated function get LocationAddress(map<string|string[]> headers = {}, *GetLocationaddressQueries queries) returns Collection\ of\ LocationAddress_Type|error {
        string resourcePath = string `/LocationAddress`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get entity from LocationAddress by key
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + AddressPersonID - Person Number
    # + AddressRepresentationCode - Version ID for International Addresses
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    resource isolated function get LocationAddress/[string LocationUUID]/[string AddressPersonID]/[string AddressRepresentationCode](map<string|string[]> headers = {}, *GetLocationaddressLocationuuidAddresspersonidAddressrepresentationcodeQueries queries) returns com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.LocationAddress_Type|error {
        string resourcePath = string `/LocationAddress/${getEncodedUri(LocationUUID)}/${getEncodedUri(AddressPersonID)}/${getEncodedUri(AddressRepresentationCode)}`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get related _LocationTP
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + AddressPersonID - Person Number
    # + AddressRepresentationCode - Version ID for International Addresses
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    resource isolated function get LocationAddress/[string LocationUUID]/[string AddressPersonID]/[string AddressRepresentationCode]/_LocationTP(map<string|string[]> headers = {}, *GetLocationaddressLocationuuidAddresspersonidAddressrepresentationcode_locationtpQueries queries) returns com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.Location_Type|error {
        string resourcePath = string `/LocationAddress/${getEncodedUri(LocationUUID)}/${getEncodedUri(AddressPersonID)}/${getEncodedUri(AddressRepresentationCode)}/_LocationTP`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get entities from LocationText
    #
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entities 
    resource isolated function get LocationText(map<string|string[]> headers = {}, *GetLocationtextQueries queries) returns Collection\ of\ LocationText_Type|error {
        string resourcePath = string `/LocationText`;
        map<Encoding> queryParamEncoding = {"$orderby": {style: FORM, explode: false}, "$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get entity from LocationText by key
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + Language - Language Key
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    resource isolated function get LocationText/[string LocationUUID]/[string Language](map<string|string[]> headers = {}, *GetLocationtextLocationuuidLanguageQueries queries) returns com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.LocationText_Type|error {
        string resourcePath = string `/LocationText/${getEncodedUri(LocationUUID)}/${getEncodedUri(Language)}`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Get related _LocationTP
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + Language - Language Key
    # + headers - Headers to be sent with the request 
    # + queries - Queries to be sent with the request 
    # + return - Retrieved entity 
    resource isolated function get LocationText/[string LocationUUID]/[string Language]/_LocationTP(map<string|string[]> headers = {}, *GetLocationtextLocationuuidLanguage_locationtpQueries queries) returns com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.Location_Type|error {
        string resourcePath = string `/LocationText/${getEncodedUri(LocationUUID)}/${getEncodedUri(Language)}/_LocationTP`;
        map<Encoding> queryParamEncoding = {"$select": {style: FORM, explode: false}, "$expand": {style: FORM, explode: false}};
        resourcePath = resourcePath + check getPathForQueryParam(queries, queryParamEncoding);
        return self.clientEp->get(resourcePath, headers);
    }

    # Update entity in Location
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + headers - Headers to be sent with the request 
    # + payload - New property values 
    # + return - Success 
    resource isolated function patch Location/[string LocationUUID](com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.Location_Type\-update payload, map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/Location/${getEncodedUri(LocationUUID)}`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Update entity in LocationAddress
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + AddressPersonID - Person Number
    # + AddressRepresentationCode - Version ID for International Addresses
    # + headers - Headers to be sent with the request 
    # + payload - New property values 
    # + return - Success 
    resource isolated function patch LocationAddress/[string LocationUUID]/[string AddressPersonID]/[string AddressRepresentationCode](com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.LocationAddress_Type\-update payload, map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/LocationAddress/${getEncodedUri(LocationUUID)}/${getEncodedUri(AddressPersonID)}/${getEncodedUri(AddressRepresentationCode)}`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Update entity in LocationText
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + Language - Language Key
    # + headers - Headers to be sent with the request 
    # + payload - New property values 
    # + return - Success 
    resource isolated function patch LocationText/[string LocationUUID]/[string Language](com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.LocationText_Type\-update payload, map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/LocationText/${getEncodedUri(LocationUUID)}/${getEncodedUri(Language)}`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->patch(resourcePath, request, headers);
    }

    # Add new entity to Location
    #
    # + headers - Headers to be sent with the request 
    # + payload - New entity 
    # + return - Created entity 
    resource isolated function post Location(com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.Location_Type\-create payload, map<string|string[]> headers = {}) returns com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.Location_Type|error {
        string resourcePath = string `/Location`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    resource isolated function post Location/[string LocationUUID]/SAP__self\.ToglMnlGeoCoordinatesMaint(map<string|string[]> headers = {}) returns com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.Location_Type|error {
        string resourcePath = string `/Location/${getEncodedUri(LocationUUID)}/SAP__self.ToglMnlGeoCoordinatesMaint`;
        http:Request request = new;
        return self.clientEp->post(resourcePath, request, headers);
    }

    # Add new entity to related _LocationTextTP
    #
    # + LocationUUID - Internal Location Number (Customer, Supplier, or Plant)
    # + headers - Headers to be sent with the request 
    # + payload - New entity 
    # + return - Created entity 
    resource isolated function post Location/[string LocationUUID]/_LocationTextTP(com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.LocationText_Type\-create payload, map<string|string[]> headers = {}) returns com\.sap\.gateway\.srvd_a2x\.api_managelocation\.v0001\.LocationText_Type|error {
        string resourcePath = string `/Location/${getEncodedUri(LocationUUID)}/_LocationTextTP`;
        http:Request request = new;
        json jsonBody = payload.toJson();
        request.setPayload(jsonBody, "application/json");
        return self.clientEp->post(resourcePath, request, headers);
    }

    resource isolated function post \$batch(http:Request request, map<string|string[]> headers = {}) returns http:Response|error {
        string resourcePath = string `/$batch`;
        // TODO: Update the request as needed;
        return self.clientEp->post(resourcePath, request, headers);
    }
}
