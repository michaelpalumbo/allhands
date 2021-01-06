const euclid = require('euclidean-rhythms')
const Max = require('max-api');
const arrRotate = require('arr-rotate');
const { maxHeaderSize } = require('http');

Max.post('working')
Max.addHandler('pattern', (active, steps, rotate) =>{
    if(!rotate){
        rotate = 0
    }
    let pattern = euclid.getPattern(active, steps)

    let rotatedPattern = arrRotate(pattern, rotate)
    Max.post(rotatedPattern)
    Max.outlet('pattern', rotatedPattern)
})