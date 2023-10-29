# TASK
# Make tests pass

# I AM NOT DONE

struct Package:
    var sender_country: String
    var recipient_country: String
    var weight_in_grams: Int

    fn __init__(inout self, sender_country: String, recipient_country: String, weight_in_grams: Int) raises:
        self.sender_country = sender_country
        self.recipient_country = recipient_country
        self.weight_in_grams = weight_in_grams
        
        if weight_in_grams < 10:
            raise Error('Cannot transport packages less than 10 grams')
    
    fn is_international(inout self) -> ???:
        # someting goes here...
        pass
    
    fn get_fees(inout self, cents_per_gram: Int) -> ???:
        # something goes here...
        pass

def main():
    # test 1
    var sender_country: String = 'Spain'
    var recipient_country: String = 'Austria'
    try:
        var package = Package(sender_country, recipient_country, 5)
        raise Error('Package is too small, cannot send')
    except Error:
        pass

    # test 2 
    sender_country = 'Spain'
    recipient_country = 'UK'
    var package = Package(sender_country, recipient_country, 1200)
    
    if not package.is_international():
        raise Error('Package from Spain to UK is international')

    # test 3 
    sender_country = 'Canada'
    recipient_country = 'Canada'
    package = Package(sender_country, recipient_country, 1200)
    
    if package.is_international():
        raise Error('Package within Canada is not international')
    
    # test 4
    let cents_per_gram: Int = 3
    package = Package(sender_country, recipient_country, 1500)

    if package.get_fees(cents_per_gram) != 4500 or package.get_fees(cents_per_gram * 2) != 9000:
        raise Error('Fees are not calculated properly')
    
    print('Great job')
    