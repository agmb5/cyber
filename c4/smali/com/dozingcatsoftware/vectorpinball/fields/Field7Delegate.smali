.class public Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;
.super Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;
.source "Field7Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;,
        Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;,
        Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;,
        Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;,
        Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;
    }
.end annotation


# static fields
.field static ACTIVE_STAR_ACTIVE_CONSTELLATION_COLOR:I = 0x0

.field static ACTIVE_STAR_INACTIVE_CONSTELLATION_COLOR:I = 0x0

.field static final BALL_LOCK_LAYER:I = 0x4

.field static final BASE_RAMP_SCORE:J = 0x1388L

.field static final CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

.field static final CONSTELLATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;",
            ">;"
        }
    .end annotation
.end field

.field static CONSTELLATION_LINE_COLOR:I = 0x0

.field static INACTIVE_STAR_ACTIVE_CONSTELLATION_COLOR:I = 0x0

.field static INACTIVE_STAR_INACTIVE_CONSTELLATION_COLOR:I = 0x0

.field static final JACKPOT_SCORE:J = 0x186a0L

.field static final MINITABLE_LAYER:I = 0x1

.field static final RAMP_SCORE_INCREMENT:J = 0x3e8L

.field static RAND:Ljava/util/Random; = null

.field static final STAR_SCORE:J = 0x1f4L

.field static final TAU:D = 6.283185307179586


# instance fields
.field ballSaverLeft:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

.field ballSaverRight:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

.field guideTickCounter:J

.field guideTickMax:J

.field jackpotGuideColor:I

.field leftLoopGuide:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

.field lockAndJackpotGuide:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

.field lockGuideColor:I

.field lockRollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;",
            ">;"
        }
    .end annotation
.end field

.field loopGuideColor:I

.field multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

.field numBallsLocked:I

.field rampScore:J

.field rightLoopGuide:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

.field starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

.field starViewCenter:Lcom/badlogic/gdx/math/Vector2;

.field starViewRadius:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->RAND:Ljava/util/Random;

    .line 33
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->CONSTELLATIONS:Ljava/util/List;

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->CONSTELLATIONS:Ljava/util/List;

    .line 34
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->CATALOG:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$StarCatalog;

    const/16 v0, 0xf0

    const/4 v1, 0x0

    .line 570
    invoke-static {v0, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v2

    sput v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ACTIVE_STAR_ACTIVE_CONSTELLATION_COLOR:I

    .line 571
    invoke-static {v1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v2

    sput v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->INACTIVE_STAR_ACTIVE_CONSTELLATION_COLOR:I

    const/16 v2, 0xc0

    .line 572
    invoke-static {v2, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v1

    sput v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ACTIVE_STAR_INACTIVE_CONSTELLATION_COLOR:I

    .line 573
    invoke-static {v0, v0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v1

    sput v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->INACTIVE_STAR_INACTIVE_CONSTELLATION_COLOR:I

    .line 574
    invoke-static {v0, v0, v0, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGBA(IIII)I

    move-result v0

    sput v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->CONSTELLATION_LINE_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;-><init>()V

    .line 279
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    const/4 v0, 0x0

    const/16 v1, 0xaa

    const/16 v2, 0x66

    .line 299
    invoke-static {v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v2

    iput v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->loopGuideColor:I

    const/16 v2, 0xcc

    .line 300
    invoke-static {v2, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v2

    iput v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockGuideColor:I

    .line 301
    invoke-static {v1, v0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->jackpotGuideColor:I

    const-wide/16 v0, 0x0

    .line 302
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideTickCounter:J

    const/4 v0, 0x5

    .line 303
    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->billions(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideTickMax:J

    return-void
.end method

.method static billions(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private guideColorAlpha()I
    .locals 4

    .line 491
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideTickCounter:J

    long-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideTickMax:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 492
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x4052c00000000000L    # 75.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static interp(DDD)D
    .locals 0

    sub-double/2addr p2, p0

    mul-double p4, p4, p2

    add-double/2addr p0, p4

    return-wide p0
.end method

.method private launchBallForMulitball(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 3

    if-nez p2, :cond_0

    .line 525
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockRollovers:Ljava/util/List;

    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    add-int/lit8 v0, v0, -0x1

    .line 526
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloverCenterAtIndex(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    .line 527
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->createBall(FF)Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    move-result-object p2

    :cond_0
    const/4 v0, 0x4

    .line 529
    invoke-virtual {p2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->moveToLayer(I)V

    .line 530
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p2

    const/4 v0, 0x0

    const/high16 v1, 0x40a00000    # 5.0f

    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->RAND:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v2, v1

    neg-float v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 531
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->playBallLaunchSound()V

    .line 532
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    return-void
.end method

.method private setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V
    .locals 1

    const-string v0, "LaunchBarrier"

    .line 441
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    xor-int/lit8 p2, p2, 0x1

    .line 442
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 8

    .line 536
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 537
    invoke-virtual {v7}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    .line 539
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockRollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 540
    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloverCenterAtIndex(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 541
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v3

    invoke-virtual {v4, v2, v0, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    const/4 v0, 0x0

    .line 542
    invoke-virtual {v4, v0, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    .line 543
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->setAngularVelocity(F)V

    .line 544
    invoke-virtual {v4}, Lcom/badlogic/gdx/physics/box2d/Body;->getGravityScale()F

    move-result v5

    .line 545
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->setGravityScale(F)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "multiball_started_message"

    .line 547
    invoke-virtual {p1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v0, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 548
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->STARTING:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    .line 549
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ballSaverLeft:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 550
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ballSaverRight:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 553
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;Lcom/badlogic/gdx/physics/box2d/Body;FLcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    .line 557
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda1;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    .line 558
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$$ExternalSyntheticLambda2;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method

.method private updateActivatedStars(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 11

    .line 446
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activatedStars:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 448
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 449
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 450
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getLayer()I

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 453
    :cond_0
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewCenter:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget-wide v7, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewRadius:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    .line 454
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v7, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewCenter:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v7

    float-to-double v7, v4

    iget-wide v9, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewRadius:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    .line 455
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activateStarsInActiveConstellationNearPoint(DD)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activatedStars:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_5

    int-to-long v0, v0

    const-wide/16 v3, 0x1f4

    mul-long v0, v0, v3

    .line 459
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 460
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->allStarsInCurrentConstellationActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 461
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    const-wide/16 v3, 0x7d0

    if-ne v0, v1, :cond_3

    .line 462
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "multiball_ready_message"

    goto :goto_2

    :cond_2
    const-string v0, "ball_lock_ready_message"

    :goto_2
    new-array v1, v2, [Ljava/lang/Object;

    .line 464
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_4

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->lockCurrentConstellation()V

    .line 468
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->allConstellationsLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "shoot_ramp_jackpot_message"

    .line 469
    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 470
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    iget-object v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->name:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "constellation_complete_message"

    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 472
    :goto_3
    invoke-virtual {p1, v0, v3, v4}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 473
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->enterWanderingMode()V

    :cond_5
    :goto_4
    return-void
.end method

.method private updateBallLockRollovers(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 480
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockRollovers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 481
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    const/4 v2, 0x1

    if-le v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 482
    :goto_1
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    sget-object v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    if-ne v3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 484
    :goto_2
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockRollovers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 485
    invoke-virtual {v4, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    xor-int/lit8 v1, v3, 0x1

    .line 486
    invoke-virtual {v4, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateGuides(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 2

    .line 497
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideTickCounter:J

    add-long/2addr v0, p2

    iget-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideTickMax:J

    rem-long/2addr v0, p2

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideTickCounter:J

    .line 500
    iget p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockGuideColor:I

    .line 501
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 502
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    .line 503
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->allConstellationsLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    iget p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->jackpotGuideColor:I

    .line 505
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideColorAlpha()I

    move-result p1

    goto :goto_0

    .line 507
    :cond_0
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    .line 508
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->allStarsInCurrentConstellationActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 509
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideColorAlpha()I

    move-result p1

    goto :goto_0

    .line 511
    :cond_1
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object p1, p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->mode:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->WANDERING:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    if-ne p1, v0, :cond_2

    .line 512
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->guideColorAlpha()I

    move-result p1

    move p3, p1

    :cond_2
    const/4 p1, 0x0

    .line 515
    :goto_0
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->loopGuideColor:I

    invoke-static {v0, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->withAlpha(II)I

    move-result p3

    .line 516
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->leftLoopGuide:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    .line 517
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->rightLoopGuide:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    .line 518
    invoke-static {p2, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->withAlpha(II)I

    move-result p1

    .line 519
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockAndJackpotGuide:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 5

    .line 361
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DropTargetLeftSave"

    .line 362
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-wide/16 v0, 0x5dc

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 363
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ballSaverLeft:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p2, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "left_save_enabled_message"

    .line 364
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p3, "DropTargetRightSave"

    .line 366
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 367
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ballSaverRight:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p2, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "right_save_enabled_message"

    .line 368
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p3, "MiniFieldTopTargets"

    .line 370
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "MiniFieldLeftTargets"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 371
    :cond_2
    iget-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->rampScore:J

    const-wide/16 v3, 0x3e8

    add-long/2addr p2, v3

    iput-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->rampScore:J

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "ramp_bonus_increased_message"

    .line 372
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 3

    .line 338
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipperRollovers"

    .line 339
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "TopRollovers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockRollovers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 345
    iget p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    .line 346
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockRollovers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 347
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p1, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->removeBallWithoutBallLoss(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 351
    iget p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "ball_locked_message"

    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    .line 352
    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 354
    :goto_0
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->lockCurrentConstellation()V

    .line 355
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->enterWanderingMode()V

    goto :goto_2

    .line 341
    :cond_2
    :goto_1
    invoke-virtual {p2, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    const-wide/16 p2, 0x5dc

    .line 342
    invoke-virtual {p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->incrementAndDisplayScoreMultiplier(J)V

    :cond_3
    :goto_2
    return-void
.end method

.method public ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 3

    .line 377
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    .line 378
    invoke-virtual {p3}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getMostRecentSensorId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LaunchBarrierSensor"

    .line 380
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 381
    invoke-direct {p0, p1, v2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "LaunchBarrierRetract"

    .line 383
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "LeftFlipperDropSensor"

    .line 386
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "RightFlipperDropSensor"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v1, "MiniTableOrBallLockSensor"

    .line 389
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 391
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    sget-object p2, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    .line 392
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->allStarsInCurrentConstellationActive()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x4

    .line 395
    :cond_3
    invoke-virtual {p3, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->moveToLayer(I)V

    goto :goto_1

    :cond_4
    const-string p3, "LeftLoopDetector"

    .line 397
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 398
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->handleLoop(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_1

    :cond_5
    const-string p3, "RightLoopDetector"

    .line 400
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 401
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->handleLoop(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_1

    :cond_6
    const-string p3, "MiniFieldDetector"

    .line 403
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 404
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->allConstellationsLocked()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 405
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->doJackpot(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_1

    :cond_7
    const-string p3, "InnerOrbitLeftTrigger"

    .line 408
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "InnerOrbitRightTrigger"

    if-eqz v1, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 409
    :cond_8
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 411
    :cond_9
    iget-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->rampScore:J

    invoke-virtual {p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    goto :goto_1

    .line 387
    :cond_a
    :goto_0
    invoke-virtual {p3}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(FF)V

    :cond_b
    :goto_1
    return-void
.end method

.method doJackpot(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "jackpot_received_message"

    .line 565
    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    const-wide/32 v0, 0x186a0

    .line 566
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 567
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->resetAndWander()V

    return-void
.end method

.method public gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 2

    .line 315
    new-instance p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-direct {p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    .line 316
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    const/4 p1, 0x0

    .line 317
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->numBallsLocked:I

    const-wide/16 v0, 0x1388

    .line 318
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->rampScore:J

    return-void
.end method

.method handleLoop(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 3

    .line 432
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->rampScore:J

    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 433
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->allStarsInCurrentConstellationActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->switchToRandomUnlockedConstellation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    iget-object v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->name:Ljava/lang/String;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method initFieldElements(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 4

    const-string v0, "StarViewBoundary"

    .line 416
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v1, 0x0

    .line 417
    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloverCenterAtIndex(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iput-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewCenter:Lcom/badlogic/gdx/math/Vector2;

    .line 418
    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloverRadiusAtIndex(I)F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewRadius:D

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const-string v2, "BallLockRollover1"

    .line 420
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v2, v0, v1

    const-string v1, "BallLockRollover2"

    .line 421
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "BallLockRollover3"

    .line 422
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 419
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockRollovers:Ljava/util/List;

    const-string v0, "LeftLoopGuide"

    .line 424
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->leftLoopGuide:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    const-string v0, "RightLoopGuide"

    .line 425
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->rightLoopGuide:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    const-string v0, "LockAndJackpotGuide"

    .line 426
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->lockAndJackpotGuide:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    const-string v0, "BallSaver-left"

    .line 427
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ballSaverLeft:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v0, "BallSaver-right"

    .line 428
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ballSaverRight:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    return-void
.end method

.method public isFieldActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$startMultiball$0$com-dozingcatsoftware-vectorpinball-fields-Field7Delegate(Lcom/badlogic/gdx/physics/box2d/Body;FLcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    .line 554
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/physics/box2d/Body;->setGravityScale(F)V

    .line 555
    invoke-direct {p0, p3, p4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->launchBallForMulitball(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    return-void
.end method

.method synthetic lambda$startMultiball$1$com-dozingcatsoftware-vectorpinball-fields-Field7Delegate(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 557
    invoke-direct {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->launchBallForMulitball(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    return-void
.end method

.method synthetic lambda$startMultiball$2$com-dozingcatsoftware-vectorpinball-fields-Field7Delegate(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 559
    invoke-direct {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->launchBallForMulitball(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    .line 560
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    return-void
.end method

.method shapesFromProjection()Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Shape;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 593
    iget-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->projection:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;

    .line 594
    iget-object v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewCenter:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v2, v2

    .line 595
    iget-object v4, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewCenter:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v4, v4

    .line 596
    iget-wide v6, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewRadius:D

    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v8, v8, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentTarget:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;

    iget-wide v8, v8, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$ProjectionTarget;->angularRadius:D

    div-double/2addr v6, v8

    .line 597
    iget-wide v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewRadius:D

    const-wide v10, 0x3f8eb851eb851eb8L    # 0.015

    mul-double v8, v8, v10

    .line 598
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 599
    :goto_0
    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 600
    iget-object v13, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->x:[D

    aget-wide v14, v13, v12

    mul-double v14, v14, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v2, v14

    .line 601
    iget-object v13, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->y:[D

    aget-wide v14, v13, v12

    mul-double v14, v14, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double v18, v4, v14

    .line 602
    iget-object v13, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->magnitude:[D

    aget-wide v14, v13, v12

    const-wide/16 v20, 0x0

    cmpg-double v13, v14, v20

    if-gtz v13, :cond_0

    const/16 v13, 0xff

    move-wide/from16 v26, v4

    goto :goto_1

    :cond_0
    const-wide v22, 0x406fe00000000000L    # 255.0

    const-wide/high16 v24, 0x403e000000000000L    # 30.0

    mul-double v24, v24, v14

    move-wide/from16 v26, v4

    sub-double v4, v22, v24

    double-to-int v4, v4

    .line 603
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 604
    :goto_1
    iget-object v4, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->indices:[I

    aget v4, v4, v12

    invoke-virtual {v0, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starColorForIndex(I)I

    move-result v4

    .line 605
    invoke-static {v4, v13}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->withAlpha(II)I

    move-result v24

    cmpg-double v4, v14, v20

    if-gtz v4, :cond_1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    goto :goto_2

    :cond_1
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v13, v14, v4

    if-ltz v13, :cond_2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    goto :goto_2

    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_2
    mul-double v20, v4, v8

    .line 607
    sget-object v22, Lcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;->SOLID:Lcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v25}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;->create(DDDLcom/dozingcatsoftware/vectorpinball/model/Shape$FillType;IILjava/lang/Integer;)Lcom/dozingcatsoftware/vectorpinball/model/Shape$Circle;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v26

    goto :goto_0

    :cond_3
    move-wide/from16 v26, v4

    .line 611
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 613
    sget-object v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->CONSTELLATIONS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    .line 614
    iget-object v8, v5, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->starIndices:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 615
    iget-object v11, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v11, v11, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activatedStars:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 616
    iget-object v11, v5, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->segmentsByIndex:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    if-eqz v11, :cond_5

    .line 618
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 619
    iget-object v13, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v13, v13, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activatedStars:Ljava/util/Set;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 620
    iget-object v13, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->starIndexToProjIndex:[I

    aget v13, v13, v9

    .line 621
    iget-object v14, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->starIndexToProjIndex:[I

    aget v12, v14, v12

    if-ltz v13, :cond_6

    if-gez v12, :cond_7

    goto :goto_3

    .line 625
    :cond_7
    iget-object v14, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->x:[D

    aget-wide v15, v14, v13

    mul-double v15, v15, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v28, v2, v15

    .line 626
    iget-object v14, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->y:[D

    aget-wide v13, v14, v13

    mul-double v13, v13, v6

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isNaN(D)Z

    add-double v30, v26, v13

    .line 627
    iget-object v13, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->x:[D

    aget-wide v14, v13, v12

    mul-double v14, v14, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v32, v2, v14

    .line 628
    iget-object v13, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$Star2DProjection;->y:[D

    aget-wide v12, v13, v12

    mul-double v12, v12, v6

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isNaN(D)Z

    add-double v34, v26, v12

    const/16 v36, 0x0

    .line 629
    sget v37, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->CONSTELLATION_LINE_COLOR:I

    const/16 v38, 0x0

    invoke-static/range {v28 .. v38}, Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;->create(DDDDIILjava/lang/Integer;)Lcom/dozingcatsoftware/vectorpinball/model/Shape$Line;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v10
.end method

.method starColorForIndex(I)I
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->activatedStars:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 578
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    iget-object v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->currentConstellation:Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;

    iget-object v1, v1, Lcom/dozingcatsoftware/vectorpinball/fields/Stars$Constellation;->starIndices:Ljava/util/Set;

    .line 579
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 582
    sget p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ACTIVE_STAR_ACTIVE_CONSTELLATION_COLOR:I

    goto :goto_1

    .line 583
    :cond_1
    sget p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->INACTIVE_STAR_ACTIVE_CONSTELLATION_COLOR:I

    :goto_1
    return p1

    :cond_2
    if-eqz v0, :cond_3

    .line 587
    sget p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->ACTIVE_STAR_INACTIVE_CONSTELLATION_COLOR:I

    goto :goto_2

    .line 588
    :cond_3
    sget p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->INACTIVE_STAR_INACTIVE_CONSTELLATION_COLOR:I

    :goto_2
    return p1
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starViewCenter:Lcom/badlogic/gdx/math/Vector2;

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->initFieldElements(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {v0, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->tick(J)V

    .line 326
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->updateActivatedStars(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->updateBallLockRollovers(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 328
    invoke-direct {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->updateGuides(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V

    .line 329
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->shapesFromProjection()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setShapes(Ljava/util/List;)V

    .line 330
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    sget-object p3, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    if-ne p2, p3, :cond_1

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_1

    .line 331
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$MultiballStatus;

    .line 332
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;->starState:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarState;->resetAndWander()V

    :cond_1
    return-void
.end method
