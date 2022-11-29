public class AnimalLocator {
    
    public static string getAnimalNameById(Integer i){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+ i);
        request.setMethod('GET');
        
        Map<String, Object> animal= new Map<String, Object>();
        
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            
            animal = (Map<String,Object>) results.get('animal');
            
            
            
        }
        return (String)animal.get('name');
    }
}