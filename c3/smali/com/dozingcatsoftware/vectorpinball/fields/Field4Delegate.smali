.class public Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;
.super Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;
.source "Field4Delegate.java"


# static fields
.field static COLOR_SUFFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ballsLocked:I

.field baseJackpot:I

.field bumperMultiplierIncrease:I

.field inMultiball:Z

.field isMultiballStarting:Z

.field jackpot:I

.field jackpotIncrease:I

.field launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

.field lockedBallKickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;",
            ">;"
        }
    .end annotation
.end field

.field lockedBallRollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;",
            ">;"
        }
    .end annotation
.end field

.field multiballKickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;",
            ">;"
        }
    .end annotation
.end field

.field multiballStatusRollovers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;",
            ">;"
        }
    .end annotation
.end field

.field rightKicker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

.field topBlocker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Blue"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Cyan"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Green"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Yellow"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Red"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Magenta"

    aput-object v2, v0, v1

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->COLOR_SUFFIXES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->inMultiball:Z

    .line 27
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->isMultiballStarting:Z

    const/4 v1, 0x1

    .line 28
    iput v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->bumperMultiplierIncrease:I

    .line 33
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    .line 36
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->jackpot:I

    const/16 v0, 0x19

    .line 37
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->baseJackpot:I

    const/4 v0, 0x5

    .line 38
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->jackpotIncrease:I

    return-void
.end method

.method private restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const-string v0, "BallSaver-left"

    .line 62
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

    .line 66
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 3

    .line 201
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DropTargetLeftSave"

    .line 202
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-wide/16 v0, 0x5dc

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 203
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "left_save_enabled_message"

    .line 204
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p3, "DropTargetRightSave"

    .line 206
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 207
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "right_save_enabled_message"

    .line 208
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p3, "DropTargetTop"

    .line 210
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->increaseExtraBumperMultiplier(Lcom/dozingcatsoftware/vectorpinball/model/Field;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 6

    .line 247
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-wide/16 v1, 0xbb8

    const-string v3, "ball_locked_message"

    const/4 v4, 0x1

    if-ne p2, p3, :cond_0

    .line 248
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->removeBallWithoutBallLoss(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    .line 249
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p2, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    new-array p2, v4, [Ljava/lang/Object;

    .line 250
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p1, v3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 251
    iput v4, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    goto/16 :goto_1

    .line 253
    :cond_0
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    const/4 v5, 0x2

    if-ne p2, p3, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->removeBallWithoutBallLoss(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    .line 255
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p2, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    new-array p2, v4, [Ljava/lang/Object;

    .line 256
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-virtual {p1, v3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 257
    iput v5, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    goto :goto_1

    .line 259
    :cond_1
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-ne p2, p3, :cond_2

    .line 260
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_1

    .line 262
    :cond_2
    iget-boolean p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->inMultiball:Z

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 264
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 265
    invoke-virtual {p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_6

    .line 270
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->doJackpot(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_1

    .line 272
    :cond_5
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p3

    const-string v1, "FlipperRollovers"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 273
    invoke-virtual {p0, p1, v5}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->increaseExtraBumperMultiplier(Lcom/dozingcatsoftware/vectorpinball/model/Field;I)V

    .line 274
    invoke-virtual {p2, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method allStatusRolloversActiveForIndex(I)Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 42
    invoke-virtual {v1, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->isRolloverActiveAtIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 1

    .line 178
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LaunchBarrierRetract"

    .line 180
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 181
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "TopRampSensor"

    .line 183
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 184
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 185
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->topBlocker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 186
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->rightKicker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_1
    const-string p2, "RightRampSensor"

    .line 188
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 189
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->topBlocker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 190
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->rightKicker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_2
    const-string p2, "AfterRampKickerSensor"

    .line 192
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 193
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->topBlocker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 194
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->rightKicker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public ballLost(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    const/4 p1, 0x1

    .line 173
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->bumperMultiplierIncrease:I

    return-void
.end method

.method clearMultiballStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->setAllMultiballStatusRolloversActive(Z)V

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0, v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->setIgnoreBallForMultiballStatusRollovers(Z)V

    .line 72
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    .line 73
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->inMultiball:Z

    .line 74
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->isMultiballStarting:Z

    return-void
.end method

.method doJackpot(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 5

    .line 116
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->jackpot:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "jackpot_received_message"

    .line 117
    invoke-virtual {p1, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 120
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getScoreMultiplier()D

    move-result-wide v1

    .line 121
    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->jackpot:I

    add-int/lit8 v3, v3, 0x64

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-long v1, v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 122
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setScoreMultiplier(D)V

    .line 123
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->jackpot:I

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->jackpotIncrease:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->jackpot:I

    .line 124
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->setAllMultiballStatusRolloversActive(Z)V

    return-void
.end method

.method public gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 6

    const-string v0, "LaunchBarrier"

    .line 128
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v0, "TopRampBlocker"

    .line 129
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->topBlocker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v0, "RightRampKicker"

    .line 130
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->rightKicker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v2, "MultiballKicker1"

    .line 132
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MultiballKicker2"

    .line 133
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "MultiballKicker3"

    .line 134
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 131
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->multiballKickers:Ljava/util/List;

    new-array v1, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const-string v2, "LockedBallRollover1"

    .line 139
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v2, v1, v3

    const-string v2, "LockedBallRollover2"

    .line 140
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v2, v1, v4

    const-string v2, "LockedBallRollover3"

    .line 141
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v2, v1, v5

    .line 138
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 144
    invoke-virtual {v2, v3, v3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 145
    invoke-virtual {v2, v3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setVisible(Z)V

    .line 146
    invoke-virtual {v2, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    goto :goto_0

    :cond_0
    new-array v0, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v1, "LockedBallKicker1"

    .line 151
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v1, v0, v3

    const-string v1, "LockedBallKicker2"

    .line 152
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v1, v0, v4

    const-string v1, "LockedBallKicker3"

    .line 153
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v1, v0, v5

    .line 150
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    .line 155
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v0, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 156
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v0, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    .line 160
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->COLOR_SUFFIXES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rollovers."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {p1, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v3

    check-cast v3, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 161
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->clearMultiballStatus()V

    .line 167
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 168
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->rightKicker:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p1, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method increaseExtraBumperMultiplier(Lcom/dozingcatsoftware/vectorpinball/model/Field;I)V
    .locals 2

    .line 78
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->bumperMultiplierIncrease:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->bumperMultiplierIncrease:I

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "bumper_multiplier_message"

    invoke-virtual {p1, v0, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    .line 80
    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    return-void
.end method

.method synthetic lambda$startMultiball$0$com-dozingcatsoftware-vectorpinball-fields-Field4Delegate(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 98
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallKickers:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 99
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    .line 100
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setVisible(Z)V

    .line 101
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    :cond_0
    return-void
.end method

.method synthetic lambda$startMultiball$1$com-dozingcatsoftware-vectorpinball-fields-Field4Delegate(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 3

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->isMultiballStarting:Z

    .line 107
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    .line 108
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setVisible(Z)V

    .line 109
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    :cond_0
    return-void
.end method

.method public processCollision(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 4

    .line 217
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "Bumper."

    .line 218
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x7

    .line 219
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 221
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getScoreMultiplier()D

    move-result-wide p3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p3, p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    .line 222
    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->bumperMultiplierIncrease:I

    int-to-long v2, v2

    add-long/2addr p3, v2

    long-to-double p3, p3

    .line 223
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, v0

    invoke-virtual {p1, p3, p4}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setScoreMultiplier(D)V

    .line 225
    iget p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    const/4 p4, 0x3

    if-ge p3, p4, :cond_1

    .line 226
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 227
    iget p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 228
    iget p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    invoke-virtual {p0, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->allStatusRolloversActiveForIndex(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 230
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    iget p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 231
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getIgnoreBall()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 232
    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    .line 233
    invoke-virtual {p2, p4}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setVisible(Z)V

    .line 234
    invoke-virtual {p2, p3, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 235
    iget p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    const/4 p4, 0x2

    if-ne p2, p4, :cond_0

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "multiball_ready_message"

    .line 236
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "ball_lock_ready_message"

    .line 237
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-wide/16 p3, 0xbb8

    .line 238
    invoke-virtual {p1, p2, p3, p4}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method setAllMultiballStatusRolloversActive(Z)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    const/4 v2, 0x2

    .line 51
    invoke-virtual {v1, v2, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setIgnoreBallForMultiballStatusRollovers(Z)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->multiballStatusRollovers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 57
    invoke-virtual {v1, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "multiball_started_message"

    .line 84
    invoke-virtual {p1, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 85
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 87
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    .line 88
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->lockedBallRollovers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setVisible(Z)V

    const/4 v1, 0x3

    .line 89
    iput v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->ballsLocked:I

    .line 90
    iput-boolean v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->inMultiball:Z

    .line 91
    iput-boolean v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->isMultiballStarting:Z

    .line 92
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->setAllMultiballStatusRolloversActive(Z)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->setIgnoreBallForMultiballStatusRollovers(Z)V

    .line 94
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->baseJackpot:I

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->jackpot:I

    .line 96
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    .line 105
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate$$ExternalSyntheticLambda1;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 0

    .line 279
    iget-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->inMultiball:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->isMultiballStarting:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field4Delegate;->clearMultiballStatus()V

    :cond_0
    return-void
.end method
