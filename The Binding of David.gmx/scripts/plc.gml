if loki = true and lokiproc = true
{
b2loki=instance_create(x,y,objProjectile)
b3loki=instance_create(x,y,objProjectile)
b4loki=instance_create(x,y,objProjectile)
b2loki.direction=b2loki.direction+90
b3loki.direction=b3loki.direction+180
b4loki.direction=b4loki.direction+270
if gatler = true
{
b2loki.direction=b2loki.direction+(random(10))-(random(15))
b3loki.direction=b3loki.direction+(random(10))-(random(15))
b4loki.direction=b4loki.direction+(random(10))-(random(15))
}
lokiproc = false;
}

if triple = true
{
btriple1=instance_create(x,y,objProjectile)
btriple2=instance_create(x,y,objProjectile)
btriple1.direction=btriple1.direction+(random(10))
btriple2.direction=btriple2.direction-(random(10))
}

if quad = true
{
b1.direction=b1.direction+(random(15))
bquad4=instance_create(x,y,objProjectile)
bquad4.direction=bquad4.direction-(random(15))
if triple = false
{
bquad2=instance_create(x,y,objProjectile)
bquad3=instance_create(x,y,objProjectile)
bquad2.direction=bquad2.direction+(random(5))
bquad3.direction=bquad3.direction-(random(5))
}
else
{
bquint5=instance_create(x,y,objProjectile)
bquint5.direction=bquint5.direction-(random(10))+(random(15))
}
}
