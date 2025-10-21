.class public Lcom/dozingcatsoftware/bouncy/OrientationListener;
.super Ljava/lang/Object;
.source "OrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/bouncy/OrientationListener$Delegate;
    }
.end annotation


# instance fields
.field I:[F

.field R:[F

.field accels:[F

.field context:Landroid/content/Context;

.field delegate:Lcom/dozingcatsoftware/bouncy/OrientationListener$Delegate;

.field mags:[F

.field orientationValues:[F

.field rate:I

.field sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/dozingcatsoftware/bouncy/OrientationListener$Delegate;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 60
    iput-object v1, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->R:[F

    new-array v0, v0, [F

    .line 61
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->I:[F

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->mags:[F

    .line 63
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->accels:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 65
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->orientationValues:[F

    .line 39
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->context:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->rate:I

    .line 41
    iput-object p3, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->delegate:Lcom/dozingcatsoftware/bouncy/OrientationListener$Delegate;

    const-string p2, "sensor"

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->sensorManager:Landroid/hardware/SensorManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 73
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->mags:[F

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->accels:[F

    .line 82
    :goto_0
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->mags:[F

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->accels:[F

    if-eqz v0, :cond_2

    .line 83
    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->R:[F

    iget-object v4, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->I:[F

    invoke-static {v3, v4, v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 84
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->R:[F

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->orientationValues:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 85
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->delegate:Lcom/dozingcatsoftware/bouncy/OrientationListener$Delegate;

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->orientationValues:[F

    const/4 v3, 0x0

    aget v3, v0, v3

    aget v2, v0, v2

    aget v0, v0, v1

    invoke-interface {p1, v3, v2, v0}, Lcom/dozingcatsoftware/bouncy/OrientationListener$Delegate;->receivedOrientationValues(FFF)V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iget v2, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->rate:I

    .line 47
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 49
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    .line 50
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iget v2, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->rate:I

    .line 49
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/OrientationListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
