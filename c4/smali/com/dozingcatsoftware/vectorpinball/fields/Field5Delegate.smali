.class public Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;
.super Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;
.source "Field5Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;,
        Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;
    }
.end annotation


# static fields
.field private static final BALL_COLOR_VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

.field private static BALL_PRIMARY_COLORS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static BALL_SECONDARY_COLORS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static DISABLED_ROLLOVER_COLORS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IGNORE_BALL_COLOR:Z = false

.field private static final JACKPOT_BASE_SCORE:J = 0xc350L

.field private static final RAMP_BASE_SCORE:J = 0x1388L

.field private static final TAU:D = 6.283185307179586

.field private static WALL_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private centerLinesByColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private centerRolloversByColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private extraBallBarriers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;",
            ">;"
        }
    .end annotation
.end field

.field private extraBallRollover:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

.field private launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

.field private multiballJackpotCount:I

.field private multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

.field previousSensorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Ball;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rampBonuses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private triangleCenterRollover:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

.field private triangleCenterX:D

.field private triangleCenterY:D

.field private triangleRadius:D

.field private triangleRotationAngle:D

.field private triangleRotationBaseSpeed:D

.field private triangleRotationSpeedMultiplier:D

.field private triangleWalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    invoke-static {}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->values()[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    move-result-object v0

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const/16 v0, 0x66

    const/16 v1, 0x88

    const/16 v2, 0xee

    .line 44
    invoke-static {v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 45
    invoke-static {v2, v1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xcc

    const/16 v4, 0x77

    .line 46
    invoke-static {v2, v2, v4}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xdd

    .line 47
    invoke-static {v4, v6, v4}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 43
    invoke-static {v3, v1, v5, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_PRIMARY_COLORS:Ljava/util/Map;

    const/16 v1, 0x44

    .line 50
    invoke-static {v1, v0, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 51
    invoke-static {v2, v0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xaa

    const/16 v5, 0x55

    .line 52
    invoke-static {v4, v4, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0xbb

    .line 53
    invoke-static {v5, v6, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 49
    invoke-static {v1, v3, v4, v5}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_SECONDARY_COLORS:Ljava/util/Map;

    const/4 v1, 0x0

    const/16 v3, 0xff

    .line 56
    invoke-static {v1, v0, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 57
    invoke-static {v2, v1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 58
    invoke-static {v2, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 59
    invoke-static {v1, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 55
    invoke-static {v3, v4, v5, v2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->WALL_COLORS:Ljava/util/Map;

    const/16 v2, 0x33

    .line 62
    invoke-static {v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 63
    invoke-static {v0, v1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 64
    invoke-static {v0, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 65
    invoke-static {v1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    invoke-static {v2, v3, v4, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->DISABLED_ROLLOVER_COLORS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 19
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 78
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationSpeedMultiplier:D

    .line 79
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationBaseSpeed:D

    const-wide/16 v0, 0x0

    .line 80
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationAngle:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 81
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterX:D

    const-wide v0, 0x4032dc2900000000L    # 18.860000610351562

    .line 82
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterY:D

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRadius:D

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    return-void
.end method

.method private allRolloversActiveForColor(Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)Z
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->centerRolloversByColor:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Ljava/util/Map<",
            "Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;",
            "TT;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->BLUE:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->RED:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->YELLOW:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->GREEN:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private checkForRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 197
    invoke-direct {p0, p1, p4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->hasBallWithColor(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0, p4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->allRolloversActiveForColor(Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 198
    invoke-static {p2, p4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->setBallColor(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->updateCenterRollovers(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 201
    :cond_0
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->rampBonuses:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x64

    .line 202
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    if-le p3, p4, :cond_1

    mul-int/lit8 p2, p2, 0x2

    :cond_1
    const-wide/16 p3, 0x32

    int-to-long v0, p2

    mul-long v0, v0, p3

    .line 206
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 207
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getAudioPlayer()Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;->playRollover()V

    :cond_2
    return-void
.end method

.method private doExtraBall(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 3

    .line 272
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addExtraBall()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "extra_ball_received_message"

    .line 273
    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    return-void
.end method

.method private endMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 265
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationSpeedMultiplier:D

    .line 266
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterRollover:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    .line 267
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->resetCenter(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 268
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->NOT_READY:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    return-void
.end method

.method private getBallColor(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;
    .locals 5

    .line 102
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPrimaryColor()I

    move-result p1

    .line 103
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 104
    sget-object v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_PRIMARY_COLORS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p1, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private hasBallWithColor(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)Z
    .locals 3

    .line 112
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 114
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    invoke-direct {p0, v2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->getBallColor(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    move-result-object v2

    if-ne p2, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private incrementRampBonus(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;Ljava/lang/String;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->rampBonuses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->rampBonuses:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, p3, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    .line 225
    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    return-void
.end method

.method private resetCenter(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 7

    .line 212
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 213
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->centerRolloversByColor:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    .line 214
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 215
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v6, v2, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->updateCenterRollovers(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->updateCenterLines(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    return-void
.end method

.method private resetExtraBallIfNeeded()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->extraBallRollover:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->extraBallRollover:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverActiveAtIndex(IZ)V

    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->extraBallBarriers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->extraBallBarriers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v2, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const-string v0, "BallSaver-left"

    .line 229
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

    .line 233
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private static setBallColor(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)V
    .locals 1

    .line 97
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_PRIMARY_COLORS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->setPrimaryColor(I)V

    .line 98
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_SECONDARY_COLORS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->setSecondaryColor(I)V

    return-void
.end method

.method private startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v2, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    .line 240
    iput-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationSpeedMultiplier:D

    .line 241
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->resetCenter(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 242
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->removeBallWithoutBallLoss(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 246
    new-instance v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 253
    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->STARTING:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    iput-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    .line 254
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballJackpotCount:I

    const-wide/16 v2, 0x3e8

    .line 255
    invoke-virtual {p1, v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v2, 0xfa0

    .line 256
    invoke-virtual {p1, v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v2, 0x1b58

    .line 257
    invoke-virtual {p1, v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v2, 0x2710

    .line 258
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$$ExternalSyntheticLambda1;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v2, v3, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method

.method private unusedBallColor(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;
    .locals 5

    .line 122
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 123
    invoke-direct {p0, p1, v3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->hasBallWithColor(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateCenterLines(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 11

    .line 164
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_4

    aget-object v6, v0, v4

    .line 165
    iget-object v7, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->centerRolloversByColor:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 166
    iget-object v8, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->centerLinesByColor:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v8, 0x0

    .line 167
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 168
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 169
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    if-ne v8, v10, :cond_0

    const/4 v10, 0x0

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v8, 0x1

    :goto_2
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 170
    invoke-virtual {v9}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v10}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_3

    :cond_1
    const/4 v9, 0x0

    .line 171
    :goto_3
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v10, v9}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setVisible(Z)V

    if-eqz v5, :cond_2

    if-eqz v9, :cond_2

    const/4 v5, 0x1

    goto :goto_4

    :cond_2
    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_7

    .line 176
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    const-wide/16 v4, 0xbb8

    if-ne v0, v1, :cond_6

    .line 177
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballJackpotCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballJackpotCount:I

    if-le v0, v3, :cond_5

    new-array v1, v3, [Ljava/lang/Object;

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "jackpot_received_with_multiplier_message"

    .line 179
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "jackpot_received_message"

    .line 181
    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_5
    invoke-virtual {p1, v0, v4, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    const-wide/32 v0, 0xc350

    .line 183
    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballJackpotCount:I

    int-to-long v2, v2

    mul-long v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 186
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->resetCenter(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_6

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->NOT_READY:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    if-ne v0, v1, :cond_7

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "shoot_pyramid_message"

    .line 189
    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 190
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->READY:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    :cond_7
    :goto_6
    return-void
.end method

.method private updateCenterRollovers(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 11

    .line 141
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->BALL_COLOR_VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 142
    invoke-direct {p0, p1, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->hasBallWithColor(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    .line 143
    :goto_1
    iget-object v7, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->centerRolloversByColor:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x0

    .line 144
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 145
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    xor-int/lit8 v10, v5, 0x1

    .line 146
    invoke-virtual {v9, v10}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setIgnoreBall(Z)V

    if-eqz v5, :cond_1

    .line 148
    invoke-virtual {v9, v6}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setVisible(Z)V

    .line 149
    sget-object v10, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->WALL_COLORS:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setNewColor(Ljava/lang/Integer;)V

    goto :goto_3

    .line 152
    :cond_1
    invoke-virtual {v9}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v10

    .line 153
    invoke-virtual {v9, v10}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setVisible(Z)V

    if-eqz v10, :cond_2

    .line 155
    sget-object v10, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->DISABLED_ROLLOVER_COLORS:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setNewColor(Ljava/lang/Integer;)V

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 3

    .line 381
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DropTargetLeftSave"

    .line 382
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-wide/16 v0, 0x5dc

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 383
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "left_save_enabled_message"

    .line 384
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p3, "DropTargetRightSave"

    .line 386
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 387
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "right_save_enabled_message"

    .line 388
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p3, "DropTargets_BlueRamp"

    .line 390
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 391
    sget-object p2, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->BLUE:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string p3, "blue_ramp_bonus_message"

    invoke-direct {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->incrementRampBonus(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p3, "DropTargets_RedRamp"

    .line 393
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 394
    sget-object p2, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->RED:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string p3, "red_ramp_bonus_message"

    invoke-direct {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->incrementRampBonus(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p3, "DropTargets_YellowRamp"

    .line 396
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 397
    sget-object p2, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->YELLOW:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string p3, "yellow_ramp_bonus_message"

    invoke-direct {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->incrementRampBonus(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p3, "DropTargets_GreenRamp"

    .line 399
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 400
    sget-object p2, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->GREEN:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string p3, "green_ramp_bonus_message"

    invoke-direct {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->incrementRampBonus(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 2

    .line 406
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FlipperRollovers"

    .line 407
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x5dc

    .line 408
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->incrementAndDisplayScoreMultiplier(J)V

    const/4 p3, 0x0

    .line 409
    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterRollover:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    if-ne p2, p3, :cond_1

    .line 413
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    sget-object p3, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->READY:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    if-ne p2, p3, :cond_2

    .line 414
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->extraBallRollover:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    if-ne p2, p3, :cond_2

    .line 418
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->doExtraBall(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 420
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->updateCenterLines(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    return-void
.end method

.method public ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 3

    .line 354
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LaunchBarrierSensor"

    .line 355
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "LaunchBarrierRetract"

    .line 358
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "RampSensor_OuterLeftTop"

    .line 361
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "RampSensor_OuterRightTop"

    if-eqz v1, :cond_2

    .line 362
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->GREEN:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    invoke-direct {p0, p1, p3, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->checkForRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->BLUE:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->checkForRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)V

    goto :goto_0

    :cond_3
    const-string v0, "RampSensor_LeftTop"

    .line 367
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->RED:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string v1, "RampSensor_LeftMiddle"

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->checkForRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)V

    goto :goto_0

    :cond_4
    const-string v0, "RampSensor_RightTop"

    .line 370
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 371
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;->YELLOW:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    const-string v1, "RampSensor_RightMiddle"

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->checkForRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)V

    goto :goto_0

    :cond_5
    const-string p1, "Sensor_ExtraBallExit"

    .line 373
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 374
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->resetExtraBallIfNeeded()V

    .line 376
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ballLost(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->updateCenterRollovers(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 350
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 10

    const-string v0, "LaunchBarrier"

    .line 286
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 288
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationAngle:D

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v2, "TriangleWall1"

    .line 290
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v3, 0x0

    .line 334
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v1, v3

    const-string v2, "TriangleWall2"

    .line 291
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string v2, "TriangleWall3"

    .line 292
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v6, 0x2

    aput-object v2, v1, v6

    .line 289
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    const-string v1, "TriangleCenter"

    .line 293
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterRollover:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 295
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->previousSensorIds:Ljava/util/Map;

    new-array v1, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const-string v2, "CenterRollover_Blue_1"

    .line 299
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v2, v1, v3

    const-string v2, "CenterRollover_Blue_2"

    .line 300
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v2, v1, v5

    const-string v2, "CenterRollover_Blue_3"

    .line 301
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v2, v1, v6

    .line 298
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const-string v7, "CenterRollover_Red_1"

    .line 303
    invoke-virtual {p1, v7}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v7, v2, v3

    const-string v7, "CenterRollover_Red_2"

    .line 304
    invoke-virtual {p1, v7}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v7, v2, v5

    const-string v7, "CenterRollover_Red_3"

    .line 305
    invoke-virtual {p1, v7}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v7, v2, v6

    .line 302
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v7, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const-string v8, "CenterRollover_Yellow_1"

    .line 307
    invoke-virtual {p1, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v8, v7, v3

    const-string v8, "CenterRollover_Yellow_2"

    .line 308
    invoke-virtual {p1, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v8, v7, v5

    const-string v8, "CenterRollover_Yellow_3"

    .line 309
    invoke-virtual {p1, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v8, v7, v6

    .line 306
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v8, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const-string v9, "CenterRollover_Green_1"

    .line 312
    invoke-virtual {p1, v9}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v9, v8, v3

    const-string v9, "CenterRollover_Green_2"

    .line 313
    invoke-virtual {p1, v9}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v9, v8, v5

    const-string v9, "CenterRollover_Green_3"

    .line 314
    invoke-virtual {p1, v9}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    aput-object v9, v8, v6

    .line 311
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 297
    invoke-static {v1, v2, v7, v8}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->centerRolloversByColor:Ljava/util/Map;

    new-array v1, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v2, "CenterLine_Blue_1_2"

    .line 318
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v2, v1, v3

    const-string v2, "CenterLine_Blue_2_3"

    .line 319
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v2, v1, v5

    const-string v2, "CenterLine_Blue_3_1"

    .line 320
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v2, v1, v6

    .line 317
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v7, "CenterLine_Red_1_2"

    .line 322
    invoke-virtual {p1, v7}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v7, v2, v3

    const-string v7, "CenterLine_Red_2_3"

    .line 323
    invoke-virtual {p1, v7}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v7, v2, v5

    const-string v7, "CenterLine_Red_3_1"

    .line 324
    invoke-virtual {p1, v7}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v7

    check-cast v7, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v7, v2, v6

    .line 321
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v7, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v8, "CenterLine_Yellow_1_2"

    .line 326
    invoke-virtual {p1, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v8, v7, v3

    const-string v8, "CenterLine_Yellow_2_3"

    .line 327
    invoke-virtual {p1, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v8, v7, v5

    const-string v8, "CenterLine_Yellow_3_1"

    .line 328
    invoke-virtual {p1, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v8

    check-cast v8, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v8, v7, v6

    .line 325
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v8, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v9, "CenterLine_Green_1_2"

    .line 330
    invoke-virtual {p1, v9}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v9, v8, v3

    const-string v9, "CenterLine_Green_2_3"

    .line 331
    invoke-virtual {p1, v9}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v9, v8, v5

    const-string v9, "CenterLine_Green_3_1"

    .line 332
    invoke-virtual {p1, v9}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v9

    check-cast v9, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v9, v8, v6

    .line 329
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 316
    invoke-static {v1, v2, v7, v8}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->centerLinesByColor:Ljava/util/Map;

    .line 334
    invoke-static {v4, v4, v4, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->buildBallColorMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->rampBonuses:Ljava/util/Map;

    const-string v1, "ExtraBallRollover"

    .line 336
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->extraBallRollover:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const-string v2, "ExtraBallBarrier_Blue"

    .line 338
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v2, v1, v3

    const-string v2, "ExtraBallBarrier_Red"

    .line 339
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v2, v1, v5

    const-string v2, "ExtraBallBarrier_Yellow"

    .line 340
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v2, v1, v6

    const-string v2, "ExtraBallBarrier_Green"

    .line 341
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    aput-object v2, v1, v0

    .line 337
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->extraBallBarriers:Ljava/util/List;

    .line 343
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->updateCenterRollovers(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->updateCenterLines(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 345
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->NOT_READY:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    return-void
.end method

.method public isFieldActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$startMultiball$0$com-dozingcatsoftware-vectorpinball-fields-Field5Delegate(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 2

    .line 247
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    move-result-object v0

    .line 248
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->unusedBallColor(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->setBallColor(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$BallColor;)V

    .line 249
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->updateCenterRollovers(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    return-void
.end method

.method synthetic lambda$startMultiball$1$com-dozingcatsoftware-vectorpinball-fields-Field5Delegate(Ljava/lang/Runnable;)V
    .locals 0

    .line 259
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 260
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    return-void
.end method

.method public processCollision(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    .line 425
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    sget-object p3, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->READY:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    if-ne p1, p3, :cond_0

    .line 426
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 427
    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    :cond_0
    return-void
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 12

    .line 437
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationSpeedMultiplier:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    .line 438
    iget-wide v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationAngle:D

    iget-wide v8, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationBaseSpeed:D

    mul-double v2, v2, v8

    long-to-double p2, p2

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v8

    mul-double v2, v2, p2

    add-double/2addr v6, v2

    iput-wide v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationAngle:D

    const-wide p2, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v0, v6, v4

    if-gez v0, :cond_0

    add-double/2addr v6, p2

    .line 440
    iput-wide v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationAngle:D

    .line 441
    :cond_0
    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationAngle:D

    cmpl-double v0, v2, p2

    if-ltz v0, :cond_1

    sub-double/2addr v2, p2

    iput-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationAngle:D

    .line 442
    :cond_1
    iget-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRotationAngle:D

    const-wide v2, 0x4000c152382d7365L    # 2.0943951023931953

    add-double v4, p2, v2

    sub-double v2, p2, v2

    .line 445
    iget-wide v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterX:D

    iget-wide v8, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRadius:D

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    double-to-float v0, v6

    .line 446
    iget-wide v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterY:D

    iget-wide v8, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRadius:D

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    double-to-float p2, v6

    .line 447
    iget-wide v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterX:D

    iget-wide v8, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRadius:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    add-double/2addr v6, v8

    double-to-float p3, v6

    .line 448
    iget-wide v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterY:D

    iget-wide v8, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRadius:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v8, v8, v4

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 449
    iget-wide v5, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterX:D

    iget-wide v7, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRadius:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    .line 450
    iget-wide v6, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleCenterY:D

    iget-wide v8, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleRadius:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v8, v8, v2

    add-double/2addr v6, v8

    double-to-float v2, v6

    .line 452
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v3, v0, p2, p3, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setStartAndDirection(FFFF)V

    .line 453
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v3, p3, v4, v5, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setStartAndDirection(FFFF)V

    .line 454
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->triangleWalls:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p3, v5, v2, v0, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setStartAndDirection(FFFF)V

    .line 458
    :cond_2
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v1, :cond_3

    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    sget-object p3, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate$MultiballStatus;

    if-ne p2, p3, :cond_3

    .line 459
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field5Delegate;->endMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    :cond_3
    return-void
.end method
