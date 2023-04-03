package com.ApplianceUsageAPI.controlllers;

import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ElectricityBillController {
    
    @PostMapping("electricity-bill")
    public double calculateElectricityBill(@RequestBody MultiValueMap<String, String> formData) {
        int lightsConsumption = Integer.parseInt(formData.getFirst("lights")) * 10; 
        int fansConsumption = Integer.parseInt(formData.getFirst("fans")) * 75;
        int fridgeConsumption = Integer.parseInt(formData.getFirst("fridge")) * 200; 
        int washingMachineConsumption = Integer.parseInt(formData.getFirst("washingMachine")) * 500; 
        int ironBoxConsumption = Integer.parseInt(formData.getFirst("ironBox")) * 1000;
        int computersConsumption = Integer.parseInt(formData.getFirst("computers")) * 50; 
        int mobilePhonesConsumption = Integer.parseInt(formData.getFirst("mobilePhones")) * 5; 

        double totalConsumption = (lightsConsumption + fansConsumption + fridgeConsumption
                + washingMachineConsumption + ironBoxConsumption
                + computersConsumption + mobilePhonesConsumption) / 1000.0;
        
        double ratePerUnit = 7.5;
        double totalCost = totalConsumption * ratePerUnit;
        
        return totalCost;
    }
}
