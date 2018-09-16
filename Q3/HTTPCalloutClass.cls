public class HTTPCalloutClass {
    public static void makeHTTPCallout(){
        String url = 'https://postman-echo.com/get?foo1=bar1&foo2=bar2';
        
        HTTP http = new HTTP();
        
        HTTPRequest request = new HTTPRequest();
        request.setMethod('GET');
        request.setEndpoint(url);
        
        HttpResponse response = http.send(request);
        
        System.debug('Response body ---------> ' + response.getBody());
        
    }
}