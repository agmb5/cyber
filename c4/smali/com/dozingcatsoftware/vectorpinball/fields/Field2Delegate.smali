.class public Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;
.super Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;
.source "Field2Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;
    }
.end annotation


# static fields
.field static final TAU:D = 6.283185307179586


# instance fields
.field rotatingGroups:[Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;-><init>()V

    return-void
.end method

.method static synthetic lambda$startMultiball$0(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 2

    .line 117
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

    .line 104
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

    .line 108
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private setupRotatingGroups(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 14

    const-string v0, "RotatingBumper1Speed"

    .line 78
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const-string v1, "RotatingBumper2Speed"

    .line 79
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const-string v1, "RotatingBumper2CenterX"

    .line 80
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v8

    const-string v1, "RotatingBumper2CenterY"

    .line 81
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v9

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "RotatingBumper1A"

    const/4 v10, 0x0

    aput-object v1, v3, v10

    const-string v1, "RotatingBumper1B"

    const/4 v11, 0x1

    aput-object v1, v3, v11

    const-string v1, "RotatingBumper1C"

    const/4 v12, 0x2

    aput-object v1, v3, v12

    const/4 v1, 0x3

    const-string v2, "RotatingBumper1D"

    aput-object v2, v3, v1

    new-array v13, v12, [Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;

    float-to-double v4, v0

    const-string v2, "CenterBumper1"

    move-object v0, p0

    move-object v1, p1

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->createRotatingGroup(Lcom/dozingcatsoftware/vectorpinball/model/Field;Ljava/lang/String;[Ljava/lang/String;D)Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;

    move-result-object v0

    aput-object v0, v13, v10

    new-array v1, v12, [Ljava/lang/String;

    const-string v0, "RotatingBumper2A"

    aput-object v0, v1, v10

    const-string v0, "RotatingBumper2B"

    aput-object v0, v1, v11

    float-to-double v2, v8

    float-to-double v4, v9

    float-to-double v7, v7

    move-object v0, p1

    move-wide v6, v7

    .line 87
    invoke-static/range {v0 .. v7}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->create(Lcom/dozingcatsoftware/vectorpinball/model/Field;[Ljava/lang/String;DDD)Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;

    move-result-object v0

    aput-object v0, v13, v11

    iput-object v13, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->rotatingGroups:[Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;

    return-void
.end method

.method private startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "multiball_started_message"

    .line 112
    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 113
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 116
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    const-wide/16 v1, 0x3e8

    .line 119
    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v1, 0xdac

    .line 120
    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 6

    .line 157
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DropTargetLeft"

    .line 158
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "left_save_enabled_message"

    .line 160
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "DropTargetRight"

    .line 163
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 164
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "right_save_enabled_message"

    .line 165
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const-string p3, "DropTargetTopLeft"

    .line 168
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    :goto_0
    if-ltz p2, :cond_4

    const-string p3, "ExtraBallRollovers"

    .line 175
    invoke-virtual {p1, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p3

    check-cast p3, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 176
    invoke-virtual {p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->numberOfRollovers()I

    move-result v4

    :goto_1
    if-ge p2, v4, :cond_4

    .line 178
    invoke-virtual {p3, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->isRolloverActiveAtIndex(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 179
    invoke-virtual {p3, p2, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 181
    invoke-virtual {p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result p2

    if-eqz p2, :cond_4

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "shoot_red_bumper_message"

    .line 182
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x3

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    const/4 p3, 0x0

    .line 133
    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    const-wide/16 p2, 0x5dc

    .line 134
    invoke-virtual {p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->incrementAndDisplayScoreMultiplier(J)V

    return-void
.end method

.method public ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    .line 204
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LaunchBarrierSensor"

    .line 206
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 207
    invoke-virtual {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    goto :goto_0

    :cond_0
    const-string p3, "LaunchBarrierRetract"

    .line 209
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ballLost(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    return-void
.end method

.method createRotatingGroup(Lcom/dozingcatsoftware/vectorpinball/model/Field;Ljava/lang/String;[Ljava/lang/String;D)Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;
    .locals 9

    .line 71
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getBodies()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    .line 73
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v3, v0

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v5, p2

    move-object v1, p1

    move-object v2, p3

    move-wide v7, p4

    invoke-static/range {v1 .. v8}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->create(Lcom/dozingcatsoftware/vectorpinball/model/Field;[Ljava/lang/String;DDD)Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;

    move-result-object p1

    return-object p1
.end method

.method public gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    return-void
.end method

.method public isFieldActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public processCollision(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    .line 140
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CenterBumper1"

    .line 141
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "ExtraBallRollovers"

    .line 143
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 145
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p2, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    :cond_0
    return-void
.end method

.method setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V
    .locals 1

    const-string v0, "LaunchBarrier"

    .line 198
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    xor-int/lit8 p2, p2, 0x1

    .line 199
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->rotatingGroups:[Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->setupRotatingGroups(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    :cond_0
    long-to-double p2, p2

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 97
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v0

    .line 98
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate;->rotatingGroups:[Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 99
    invoke-virtual {v3, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field2Delegate$RotatingGroup;->applyRotation(Lcom/dozingcatsoftware/vectorpinball/model/Field;D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
