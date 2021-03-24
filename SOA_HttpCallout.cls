public class SOA_HttpCallout 
{
  private static string url ='https://postman-echo.com/get?foo1=bar1&foo2=bar2';
  
  public static void printCalloutResponse()
  {
      System.debug(getCalloutResponse(url));
  }
    
  private static String getCalloutResponse(String url) {
 
    Http h = new Http();
    HttpRequest req = new HttpRequest();
    req.setEndpoint(url);
    req.setMethod('GET');
    HttpResponse res = h.send(req);
    return res.getBody();
  }
}