.class public Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;
.super Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;
.source "Field1Delegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;-><init>()V

    return-void
.end method

.method static synthetic lambda$startMultiball$0(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    :cond_0
    return-void
.end method

.method private restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const-string v0, "BallSaver-left"

    .line 31
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const-string v0, "BallSaver-right"

    .line 35
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V
    .locals 1

    const-string v0, "LaunchBarrier"

    .line 76
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    xor-int/lit8 p2, p2, 0x1

    .line 77
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "multiball_started_message"

    .line 39
    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 40
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 43
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    const-wide/16 v1, 0x3e8

    .line 46
    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v1, 0xdac

    .line 47
    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 3

    .line 53
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DropTargetLeftSave"

    .line 54
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-wide/16 v0, 0x5dc

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "left_save_enabled_message"

    .line 56
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p3, "DropTargetRightSave"

    .line 58
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 59
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "right_save_enabled_message"

    .line 60
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    const-string p2, "ExtraBallRollovers"

    .line 64
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result p3

    if-nez p3, :cond_2

    .line 66
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activateFirstUnactivatedRollover()V

    .line 67
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "shoot_ramp_multiball_message"

    .line 68
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 2

    const/4 p3, 0x0

    .line 16
    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    const-wide/16 v0, 0x5dc

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->incrementAndDisplayScoreMultiplier(J)V

    .line 20
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RampRollovers"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "ExtraBallRollovers"

    .line 22
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 23
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    .line 25
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;->startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    :cond_0
    return-void
.end method

.method public ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 1

    .line 82
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LaunchBarrierSensor"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LaunchBarrierRetract"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ballLost(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    return-void
.end method

.method public gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field1Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    return-void
.end method
