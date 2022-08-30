function oddishOrEvenish(number) {
    let sum = 0;
    while (number) {
        sum += number % 10;
        number = Math.floor(number / 10);
    }
    if(sum %2 != 0 ){
        console.log("Odd")
    } else {
        console.log("Even")
    }
}

oddishOrEvenish(43);
oddishOrEvenish(373);
oddishOrEvenish(4433);
