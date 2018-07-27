# 10PRINT
10PRINT examples made with processing

## Information
For more information check the [10PRINT](https://www.google.pt/url?sa=t&source=web&rct=j&url=https://10print.org/&ved=0ahUKEwiF1pHoycrWAhUjK8AKHUx0AR8QFghjMAc&usg=AFQjCNE4RHFRvTllDzKAXByYHzCRYvqQ7w) site.


## About:

Bellow you can found the code to draw the simple 10PRINT with Processing

```
int x = 0;
int y = 0;

int spacing = 20;

void setup(){
    background(0, 0, 255);
}

void draw(){
    stroke(255);
    strokeWeight(10);
    if(random(1) > 0.5){
      line(x, y, x + spacing, y + spacing);
    } else {
      line(x, y + spacing, x + spacing, y);
    } 
    x = x + spacing;
    if(x > width){
      x = 0;
      y = y + spacing;
    }
}
```

## 10Print examples

* Classic

```
drawTenPrint("classic", spacing);
```

![SCREENSHOT](https://user-images.githubusercontent.com/32375763/31026536-c8427d82-a53e-11e7-9a00-1d98c96fb385.png)


* Colorful

```
drawTenPrint("colorful", spacing);
```

![SCREENSHOT ](https://user-images.githubusercontent.com/32375763/31026672-3126c588-a53f-11e7-83a3-dcfcf898110b.png)

* Random Stroke Weight

```
drawTenPrint("rndFat", spacing);
```

![SCREENSHOT3](https://user-images.githubusercontent.com/32375763/31026755-80236966-a53f-11e7-9847-d2107fc612fb.png)

* Random Spacing value

```
drawTenPrint("rndSpace", spacing);
```

![rndspace](https://user-images.githubusercontent.com/32375763/31026870-eb4487ac-a53f-11e7-9f29-80e602af786c.png)

* All the styles minus the classic

```
drawTenPrint("mostInOne", spacing);
```

![mostinone](https://user-images.githubusercontent.com/32375763/31026873-ef7c0174-a53f-11e7-9092-fd87398d50c4.png)

