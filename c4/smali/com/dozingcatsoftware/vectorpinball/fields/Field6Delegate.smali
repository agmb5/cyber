.class public Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;
.super Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;
.source "Field6Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;,
        Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;,
        Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;
    }
.end annotation


# static fields
.field private static final BLACK:I

.field private static final TAU:D = 6.283185307179586


# instance fields
.field private final ballColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ballSecondaryColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final gravityDepthSquared:D

.field gravityImpulse:Lcom/badlogic/gdx/math/Vector2;

.field private final gravityRangeSquared:D

.field private inProgressPlanetPhase:D

.field private launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

.field private multiballJackpotMultiplier:I

.field private final multiballJackpotScore:J

.field private multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

.field private orbits:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

.field private final planet1TargetsScore:J

.field private final planet2RolloversScore:J

.field private final planetActivatedScore:J

.field private final planetColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final planetGravityForce:D

.field private planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

.field private final rampBonusDurationNanos:J

.field private rampBonusMultiplier:I

.field private rampBonusNanosRemaining:J

.field private final rampScore:J

.field private sun:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

.field private final sunGravityForce:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {v0, v0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v0

    sput v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->BLACK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;-><init>()V

    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    .line 23
    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->sunGravityForce:D

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    .line 24
    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planetGravityForce:D

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    .line 26
    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->gravityDepthSquared:D

    const-wide/high16 v1, 0x4050000000000000L    # 64.0

    .line 28
    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->gravityRangeSquared:D

    const-wide v1, 0x2cb417800L

    .line 30
    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusDurationNanos:J

    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusNanosRemaining:J

    const/4 v1, 0x1

    .line 32
    iput v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusMultiplier:I

    const-wide/16 v2, 0x9c4

    .line 34
    iput-wide v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampScore:J

    const-wide/16 v2, 0x1388

    .line 35
    iput-wide v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planet1TargetsScore:J

    .line 36
    iput-wide v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planet2RolloversScore:J

    .line 37
    iput-wide v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planetActivatedScore:J

    const-wide/32 v2, 0x186a0

    .line 38
    iput-wide v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballJackpotScore:J

    .line 40
    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    iput-object v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    .line 41
    iput v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballJackpotMultiplier:I

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0xff

    const/16 v5, 0x99

    const/4 v6, 0x0

    .line 45
    invoke-static {v4, v5, v6}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 46
    invoke-static {v6, v5, v4}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    const/16 v7, 0xaa

    .line 47
    invoke-static {v7, v6, v6}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v3, v9

    const/16 v8, 0x66

    .line 48
    invoke-static {v6, v7, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v3, v11

    const/16 v10, 0x22

    const/16 v12, 0xcc

    .line 49
    invoke-static {v7, v10, v12}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v3, v14

    .line 44
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planetColors:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v13, 0xbb

    const/16 v15, 0x44

    .line 51
    invoke-static {v4, v13, v15}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v6

    .line 52
    invoke-static {v8, v13, v4}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0xdd

    .line 53
    invoke-static {v4, v15, v15}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v9

    const/16 v8, 0x77

    .line 54
    invoke-static {v8, v4, v7}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v11

    const/16 v8, 0x88

    const/16 v7, 0xee

    .line 55
    invoke-static {v12, v8, v7}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v14

    .line 50
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->ballColors:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/Integer;

    .line 57
    invoke-static {v4, v5, v10}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 58
    invoke-static {v15, v5, v4}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 59
    invoke-static {v13, v10, v10}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    const/16 v1, 0x55

    .line 60
    invoke-static {v1, v13, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v11

    const/16 v1, 0x66

    const/16 v3, 0xaa

    .line 61
    invoke-static {v3, v1, v12}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    .line 56
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->ballSecondaryColors:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 73
    iput-wide v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->inProgressPlanetPhase:D

    .line 294
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->gravityImpulse:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private activatePlanetIfMatch(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;I)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->ON:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->ballColors:Ljava/util/List;

    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPrimaryColor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ne p2, p3, :cond_4

    .line 118
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    aget-object p2, p2, p3

    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->ON:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    iput-object v0, p2, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    const-wide/16 v0, 0x1388

    .line 119
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 120
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->allPlanetsOn()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 121
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    sget-object p3, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    if-ne p2, p3, :cond_1

    .line 122
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_2

    .line 125
    :cond_1
    iget p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballJackpotMultiplier:I

    if-le p2, v1, :cond_2

    new-array p3, v1, [Ljava/lang/Object;

    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "jackpot_received_with_multiplier_message"

    .line 126
    invoke-virtual {p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "jackpot_received_message"

    .line 129
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-wide/16 v2, 0x7d0

    .line 130
    invoke-virtual {p1, p2, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    const-wide/32 p2, 0x186a0

    .line 131
    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballJackpotMultiplier:I

    int-to-long v2, v2

    mul-long v2, v2, p2

    invoke-virtual {p1, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 132
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballJackpotMultiplier:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballJackpotMultiplier:I

    .line 133
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object p3, p1, v0

    .line 134
    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->OFF:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    iput-object v1, p3, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-array p2, v1, [Ljava/lang/Object;

    add-int/2addr p3, v1

    .line 139
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "planet_activated_message"

    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    .line 140
    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_4
    :goto_2
    return-void
.end method

.method private allPlanetsOn()Z
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 105
    iget-object v4, v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    sget-object v5, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->ON:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    if-eq v4, v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private anyBallHasColorForPlanetIndex(Lcom/dozingcatsoftware/vectorpinball/model/Field;I)Z
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->ballColors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 163
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 164
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 165
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPrimaryColor()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private checkRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;JLjava/lang/Integer;)V
    .locals 3

    .line 147
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getMostRecentSensorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 148
    iget p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusMultiplier:I

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 149
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v2

    const-string p3, "ramp_bonus_message"

    invoke-virtual {p1, p3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v1, 0x3e8

    .line 150
    invoke-virtual {p1, p3, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    :cond_0
    const-wide v1, 0x2cb417800L

    .line 152
    iput-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusNanosRemaining:J

    .line 153
    iget p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusMultiplier:I

    int-to-long v1, p3

    mul-long p4, p4, v1

    invoke-virtual {p1, p4, p5}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 154
    iget p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusMultiplier:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusMultiplier:I

    if-eqz p6, :cond_1

    .line 156
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->activatePlanetIfMatch(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;I)V

    :cond_1
    return-void
.end method

.method private endMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 4

    .line 97
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    .line 98
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 99
    sget-object v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->OFF:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    iput-object v3, v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 6

    const-string v0, "BallSaver-left"

    .line 80
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    const-string v0, "BallSaver-right"

    .line 81
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 82
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 83
    sget-object v5, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->OFF:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    iput-object v5, v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_0
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;->STARTING:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    const/4 v0, 0x1

    .line 87
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballJackpotMultiplier:I

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "multiball_started_message"

    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    const-wide/16 v3, 0x3e8

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$$ExternalSyntheticLambda1;-><init>(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    invoke-virtual {p1, v3, v4, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    .line 90
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    return-void
.end method

.method private updatePlanetStatus(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 5

    .line 173
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->inProgressPlanetPhase:D

    long-to-double p2, p2

    const-wide v2, 0x41edcd6500000000L    # 4.0E9

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double p2, p2, v2

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->inProgressPlanetPhase:D

    .line 174
    :goto_0
    iget-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->inProgressPlanetPhase:D

    cmpl-double v0, p2, v2

    if-lez v0, :cond_0

    sub-double/2addr p2, v2

    .line 175
    iput-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->inProgressPlanetPhase:D

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 177
    :goto_1
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    array-length v1, v0

    if-ge p3, v1, :cond_5

    .line 178
    aget-object v0, v0, p3

    .line 179
    iget-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->ON:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    if-eq v1, v2, :cond_2

    .line 180
    invoke-direct {p0, p1, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->anyBallHasColorForPlanetIndex(Lcom/dozingcatsoftware/vectorpinball/model/Field;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->IN_PROGRESS:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->OFF:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    :goto_2
    iput-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    .line 183
    :cond_2
    iget-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->element:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    iget-object v2, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    sget-object v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->OFF:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    .line 185
    iget-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    sget-object v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->IN_PROGRESS:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    if-ne v1, v2, :cond_4

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 186
    iget-wide v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->inProgressPlanetPhase:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    add-double/2addr v3, v1

    const-wide v1, 0x3fd6666666666666L    # 0.35

    mul-double v3, v3, v1

    goto :goto_4

    :cond_4
    const-wide/16 v3, 0x0

    .line 187
    :goto_4
    iget-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->element:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    iget v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->color:I

    sget v2, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->BLACK:I

    invoke-static {v0, v2, v3, v4}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->blend(IID)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverColorAtIndex(ILjava/lang/Integer;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 4

    .line 251
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DropTargetLeftSave"

    .line 252
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x5dc

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string p2, "BallSaver-left"

    .line 253
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p2, v3}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "left_save_enabled_message"

    .line 254
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "DropTargetRightSave"

    .line 256
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "BallSaver-right"

    .line 257
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    check-cast p2, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    invoke-virtual {p2, v3}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "right_save_enabled_message"

    .line 258
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string v0, "Planet1Targets"

    .line 260
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-wide/16 v0, 0x1388

    .line 261
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 262
    invoke-direct {p0, p1, p3, v3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->activatePlanetIfMatch(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 3

    .line 268
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipperRollovers"

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p2, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    const-wide/16 p2, 0x5dc

    .line 271
    invoke-virtual {p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->incrementAndDisplayScoreMultiplier(J)V

    goto :goto_2

    :cond_0
    const-string v1, "Planet2Rollovers"

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p2, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    const-wide/16 v0, 0x1388

    .line 275
    invoke-virtual {p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    const/4 p2, 0x1

    .line 276
    invoke-direct {p0, p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->activatePlanetIfMatch(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;I)V

    goto :goto_2

    :cond_1
    const/4 p1, -0x1

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    array-length v1, v0

    if-ge v2, v1, :cond_3

    .line 281
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->element:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    if-ne p2, v0, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz p1, :cond_4

    .line 287
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->ballColors:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->setPrimaryColor(I)V

    .line 288
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->ballSecondaryColors:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->setSecondaryColor(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 9

    .line 228
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LaunchBarrierSensor"

    .line 229
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "LaunchBarrierRetract"

    .line 232
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "LeftLoopDetector_Trigger"

    .line 235
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v5, 0x9c4

    const/4 p2, 0x3

    .line 236
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "LeftLoopDetector_Enter"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->checkRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;JLjava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v0, "RightLoopDetector_Trigger"

    .line 238
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v5, 0x9c4

    const/4 p2, 0x2

    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "RightLoopDetector_Enter"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->checkRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;JLjava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const-string v0, "OrbitDetector_Left"

    .line 241
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    const-wide/16 v6, 0x9c4

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "OrbitDetector_Right"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->checkRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;JLjava/lang/Integer;)V

    goto :goto_0

    :cond_4
    const-string v0, "OrbitDetector_Right"

    .line 244
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-wide/16 v6, 0x9c4

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "OrbitDetector_Left"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->checkRamp(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/lang/String;JLjava/lang/Integer;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public ballLost(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method public gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 2

    const-string v0, "LaunchBarrier"

    .line 213
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->launchBarrier:Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v1, 0x1

    .line 214
    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->initializePlanets(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    return-void
.end method

.method initializePlanets(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 13

    const-string v0, "Sun"

    .line 192
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->sun:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v1, 0x1

    .line 193
    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    const-string v0, "Orbits"

    .line 194
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->orbits:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 196
    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->numberOfRollovers()I

    move-result v0

    .line 197
    new-array v1, v0, [Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    .line 198
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 200
    new-instance v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$1;)V

    .line 201
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    aput-object v4, v5, v3

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Planet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v5

    check-cast v5, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    iput-object v5, v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->element:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 203
    iget-object v5, v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->element:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v5, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloverRadiusAtIndex(I)F

    move-result v5

    float-to-double v7, v5

    iput-wide v7, v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->radius:D

    .line 204
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planetColors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->color:I

    .line 205
    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v7, v7, v9

    iput-wide v7, v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    const-wide v9, 0x3fc999999999999aL    # 0.2

    .line 207
    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v11

    mul-double v11, v11, v9

    add-double/2addr v11, v7

    int-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v7

    iput-wide v11, v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angularVelocity:D

    .line 208
    sget-object v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->OFF:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    iput-object v3, v4, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->status:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    move v3, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isFieldActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$startMultiball$0$com-dozingcatsoftware-vectorpinball-fields-Field6Delegate(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    .line 91
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 92
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    return-void
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 297
    iget-object v3, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    if-nez v3, :cond_0

    .line 298
    invoke-virtual/range {p0 .. p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->initializePlanets(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 301
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_1

    iget-object v5, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    sget-object v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$MultiballStatus;

    if-ne v5, v6, :cond_1

    .line 304
    invoke-direct/range {p0 .. p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->endMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 307
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->updatePlanetStatus(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V

    .line 309
    iget-wide v5, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusNanosRemaining:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    sub-long/2addr v5, v1

    .line 310
    iput-wide v5, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusNanosRemaining:J

    .line 312
    :cond_2
    iget-wide v5, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusNanosRemaining:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    .line 313
    iput v4, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->rampBonusMultiplier:I

    :cond_3
    long-to-double v1, v1

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    .line 316
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 317
    :goto_0
    iget-object v6, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    array-length v7, v6

    if-ge v5, v7, :cond_6

    .line 318
    aget-object v6, v6, v5

    .line 319
    iget-wide v7, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    iget-wide v9, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angularVelocity:D

    mul-double v9, v9, v1

    add-double/2addr v7, v9

    iput-wide v7, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    .line 320
    :goto_1
    iget-wide v7, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v11, v7, v9

    if-lez v11, :cond_4

    .line 321
    iget-wide v7, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    sub-double/2addr v7, v9

    iput-wide v7, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    goto :goto_1

    .line 323
    :cond_4
    :goto_2
    iget-wide v7, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    const-wide/16 v11, 0x0

    cmpg-double v13, v7, v11

    if-gez v13, :cond_5

    .line 324
    iget-wide v7, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    add-double/2addr v7, v9

    iput-wide v7, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    goto :goto_2

    .line 326
    :cond_5
    iget-object v7, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->orbits:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v7, v5}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloverCenterAtIndex(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    .line 327
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->orbits:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v8, v5}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloverRadiusAtIndex(I)F

    move-result v8

    float-to-double v8, v8

    .line 328
    iget v10, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v10, v10

    iget-wide v12, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v10, v12

    .line 329
    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v10, v7

    iget-wide v12, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->angle:D

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double v18, v10, v8

    .line 330
    iget-object v14, v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->element:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    const/4 v15, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setRolloverCenterAtIndex(IDD)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_9

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    .line 335
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 336
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 337
    invoke-virtual {v6}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    .line 338
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->sun:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v8, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloverCenterAtIndex(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    .line 339
    iget v9, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    .line 340
    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v11, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v8, v11

    float-to-double v11, v8

    .line 341
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v9, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v11, v11

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x4050000000000000L    # 64.0

    cmpg-double v8, v13, v15

    if-gtz v8, :cond_8

    .line 343
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    const-wide/high16 v15, 0x4010000000000000L    # 4.0

    add-double/2addr v13, v15

    div-double/2addr v10, v13

    .line 345
    iget-object v12, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->gravityImpulse:Lcom/badlogic/gdx/math/Vector2;

    mul-double v10, v10, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v10

    double-to-float v13, v13

    iput v13, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 346
    iget-object v12, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->gravityImpulse:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v10, v10, v8

    double-to-float v8, v10

    iput v8, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 347
    iget-object v8, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->planets:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_7

    aget-object v11, v8, v10

    .line 348
    iget-object v12, v11, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->element:Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    invoke-virtual {v12, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloverCenterAtIndex(I)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v12

    .line 349
    iget-wide v13, v11, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$Planet;->radius:D

    move v11, v5

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 350
    iget v13, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v14, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    .line 351
    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v15, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v12, v15

    move-object/from16 p1, v7

    move-object v15, v8

    float-to-double v7, v12

    .line 352
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v19, v13, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v21, v7, v7

    add-double v19, v19, v21

    .line 353
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    mul-double v4, v4, v12

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    add-double v19, v19, v12

    div-double v4, v4, v19

    .line 356
    iget-object v14, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->gravityImpulse:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-double v4, v4, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v21, v1

    mul-double v1, v4, v19

    double-to-float v1, v1

    add-float/2addr v12, v1

    iput v12, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 357
    iget-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->gravityImpulse:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v4, v4, v7

    double-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p1

    move v5, v11

    move-object v8, v15

    move-wide/from16 v1, v21

    const/4 v4, 0x0

    const-wide/high16 v15, 0x4010000000000000L    # 4.0

    goto :goto_4

    :cond_7
    move-wide/from16 v21, v1

    move v11, v5

    .line 359
    iget-object v1, v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;->gravityImpulse:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_5

    :cond_8
    move-wide/from16 v21, v1

    move v11, v5

    :goto_5
    add-int/lit8 v5, v11, 0x1

    move-wide/from16 v1, v21

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_9
    return-void
.end method
