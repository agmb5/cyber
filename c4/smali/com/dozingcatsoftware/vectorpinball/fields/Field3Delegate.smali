.class public Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;
.super Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;
.source "Field3Delegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;
    }
.end annotation


# static fields
.field static RAND:Ljava/util/Random;

.field static TEMPERATURE_COLORS:[I


# instance fields
.field baseBumperBonusDurationNanos:J

.field baseBumperBonusMultiplier:I

.field bumperBonusActive:Z

.field bumperBonusDurationIncrement:J

.field bumperBonusDurationNanos:J

.field bumperBonusMultiplier:I

.field bumperBonusMultiplierIncrement:I

.field bumperBonusNanosElapsed:J

.field bumperElements:[Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

.field bumperEnergy:D

.field lowerTargetGroupCompleted:I

.field maxBumperEnergy:D

.field maxLowerTargetGroupCompleted:I

.field maxUpperTargetGroupCompleted:I

.field multiballFlashIncrements:[D

.field multiballFlashValues:[D

.field multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

.field upperTargetGroupCompleted:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x35

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 24
    invoke-static {v1, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    aput v3, v0, v1

    const/16 v3, 0x10

    .line 25
    invoke-static {v1, v3, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v0, v5

    const/16 v4, 0x20

    .line 26
    invoke-static {v1, v4, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v5

    const/4 v6, 0x2

    aput v5, v0, v6

    const/16 v5, 0x30

    .line 27
    invoke-static {v1, v5, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v6

    const/4 v7, 0x3

    aput v6, v0, v7

    const/16 v6, 0x40

    .line 28
    invoke-static {v1, v6, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v6

    const/4 v7, 0x4

    aput v6, v0, v7

    const/16 v6, 0x50

    .line 29
    invoke-static {v1, v6, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v7

    const/4 v8, 0x5

    aput v7, v0, v8

    const/16 v7, 0x60

    .line 30
    invoke-static {v1, v7, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v8

    const/4 v9, 0x6

    aput v8, v0, v9

    const/16 v8, 0x70

    .line 31
    invoke-static {v1, v8, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v9

    const/4 v10, 0x7

    aput v9, v0, v10

    const/16 v9, 0x80

    .line 32
    invoke-static {v1, v9, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v9

    const/16 v10, 0x8

    aput v9, v0, v10

    const/16 v9, 0x90

    .line 33
    invoke-static {v1, v9, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v10

    const/16 v11, 0x9

    aput v10, v0, v11

    const/16 v10, 0xa0

    .line 34
    invoke-static {v1, v10, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v10

    const/16 v11, 0xa

    aput v10, v0, v11

    const/16 v10, 0xb0

    .line 35
    invoke-static {v1, v10, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v11

    const/16 v12, 0xb

    aput v11, v0, v12

    const/16 v11, 0xc0

    .line 36
    invoke-static {v1, v11, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v12

    const/16 v13, 0xc

    aput v12, v0, v13

    const/16 v12, 0xd0

    .line 37
    invoke-static {v1, v12, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v14

    const/16 v15, 0xd

    aput v14, v0, v15

    const/16 v14, 0xe0

    .line 38
    invoke-static {v1, v14, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v14

    const/16 v15, 0xe

    aput v14, v0, v15

    const/16 v14, 0xf0

    .line 39
    invoke-static {v1, v14, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v15

    const/16 v16, 0xf

    aput v15, v0, v16

    .line 41
    invoke-static {v1, v2, v14}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v15

    aput v15, v0, v3

    .line 42
    invoke-static {v1, v2, v12}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v15

    const/16 v16, 0x11

    aput v15, v0, v16

    .line 43
    invoke-static {v1, v2, v10}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v15

    const/16 v16, 0x12

    aput v15, v0, v16

    .line 44
    invoke-static {v1, v2, v9}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v15

    const/16 v16, 0x13

    aput v15, v0, v16

    .line 45
    invoke-static {v1, v2, v8}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v15

    const/16 v16, 0x14

    aput v15, v0, v16

    .line 46
    invoke-static {v1, v2, v6}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v15

    const/16 v16, 0x15

    aput v15, v0, v16

    .line 47
    invoke-static {v1, v2, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v15

    const/16 v16, 0x16

    aput v15, v0, v16

    .line 48
    invoke-static {v1, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v15

    const/16 v16, 0x17

    aput v15, v0, v16

    .line 50
    invoke-static {v3, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v15, 0x18

    aput v3, v0, v15

    .line 51
    invoke-static {v5, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v16, 0x19

    aput v3, v0, v16

    .line 52
    invoke-static {v6, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x1a

    aput v3, v0, v6

    .line 53
    invoke-static {v8, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x1b

    aput v3, v0, v6

    .line 54
    invoke-static {v9, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x1c

    aput v3, v0, v6

    .line 55
    invoke-static {v10, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x1d

    aput v3, v0, v6

    .line 56
    invoke-static {v12, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x1e

    aput v3, v0, v6

    .line 57
    invoke-static {v14, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x1f

    aput v3, v0, v6

    .line 59
    invoke-static {v2, v14, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    aput v3, v0, v4

    const/16 v3, 0xe4

    .line 60
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v4, 0x21

    aput v3, v0, v4

    const/16 v3, 0xd8

    .line 61
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v4, 0x22

    aput v3, v0, v4

    const/16 v3, 0xcc

    .line 62
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v4, 0x23

    aput v3, v0, v4

    .line 63
    invoke-static {v2, v11, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v4, 0x24

    aput v3, v0, v4

    const/16 v3, 0xb4

    .line 64
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x25

    aput v3, v0, v6

    const/16 v3, 0xa8

    .line 65
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x26

    aput v3, v0, v6

    const/16 v3, 0x9c

    .line 66
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x27

    aput v3, v0, v6

    .line 67
    invoke-static {v2, v9, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x28

    aput v3, v0, v6

    const/16 v3, 0x84

    .line 68
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x29

    aput v3, v0, v6

    const/16 v3, 0x78

    .line 69
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x2a

    aput v3, v0, v6

    const/16 v3, 0x6c

    .line 70
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x2b

    aput v3, v0, v6

    .line 71
    invoke-static {v2, v7, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x2c

    aput v3, v0, v6

    const/16 v3, 0x54

    .line 72
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x2d

    aput v3, v0, v6

    const/16 v3, 0x48

    .line 73
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x2e

    aput v3, v0, v6

    const/16 v3, 0x3c

    .line 74
    invoke-static {v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v6, 0x2f

    aput v3, v0, v6

    .line 75
    invoke-static {v2, v5, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    aput v3, v0, v5

    .line 76
    invoke-static {v2, v4, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v4, 0x31

    aput v3, v0, v4

    .line 77
    invoke-static {v2, v15, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v4, 0x32

    aput v3, v0, v4

    .line 78
    invoke-static {v2, v13, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v3

    const/16 v4, 0x33

    aput v3, v0, v4

    .line 79
    invoke-static {v2, v1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v1

    const/16 v2, 0x34

    aput v1, v0, v2

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->TEMPERATURE_COLORS:[I

    .line 91
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->RAND:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusMultiplierIncrement:I

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationIncrement:J

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->upperTargetGroupCompleted:I

    .line 107
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    const-wide/16 v1, 0x0

    .line 108
    iput-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperEnergy:D

    .line 110
    iput-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxBumperEnergy:D

    .line 111
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxUpperTargetGroupCompleted:I

    .line 112
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxLowerTargetGroupCompleted:I

    .line 114
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 115
    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballFlashValues:[D

    new-array v0, v0, [D

    .line 116
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballFlashIncrements:[D

    return-void
.end method

.method static colorForTemperatureRatio(D)I
    .locals 5

    .line 83
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->TEMPERATURE_COLORS:[I

    array-length v1, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gtz v4, :cond_0

    const/4 p0, 0x0

    .line 84
    aget p0, v0, p0

    return p0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p0, v2

    if-ltz v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 85
    aget p0, v0, v1

    return p0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    aget p0, v0, p1

    return p0
.end method

.method private restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const-string v0, "BallSaver-left"

    .line 151
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

    .line 155
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method private setColorForBumpers(Ljava/lang/Integer;)V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperElements:[Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 160
    invoke-virtual {v3, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->setNewColor(Ljava/lang/Integer;)V

    if-nez p1, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->withAlpha(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->setNewOuterColor(Ljava/lang/Integer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public allDropTargetsInGroupHit(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 4

    .line 188
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/DropTargetGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DropTargetLeftSave"

    .line 189
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-wide/16 v0, 0x5dc

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "left_save_enabled_message"

    .line 191
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_0
    const-string p3, "DropTargetRightSave"

    .line 193
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 194
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "right_save_enabled_message"

    .line 195
    invoke-virtual {p1, p3, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p3, "LowerMultiballTargets"

    .line 197
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 199
    iget p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    iget p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxLowerTargetGroupCompleted:I

    if-ge p2, p3, :cond_3

    .line 200
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationNanos:J

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationIncrement:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationNanos:J

    add-int/lit8 p2, p2, 0x1

    .line 201
    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    int-to-double v0, p2

    int-to-double p2, p3

    .line 202
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    const-string p2, "LowerTargetIndicator"

    .line 203
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    .line 204
    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->colorForTemperatureRatio(D)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->checkForEnableMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    goto :goto_0

    :cond_2
    const-string p3, "UpperMultiballTargets"

    .line 208
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 210
    iget p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->upperTargetGroupCompleted:I

    iget p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxUpperTargetGroupCompleted:I

    if-ge p2, p3, :cond_3

    .line 211
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusMultiplier:I

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusMultiplierIncrement:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusMultiplier:I

    add-int/lit8 p2, p2, 0x1

    .line 212
    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->upperTargetGroupCompleted:I

    int-to-double v0, p2

    int-to-double p2, p3

    .line 213
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, p2

    const-string p2, "UpperTargetIndicator"

    .line 214
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    .line 215
    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->colorForTemperatureRatio(D)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->checkForEnableMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 1

    .line 167
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getElementId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LeftRampRollover"

    .line 168
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RightRampRollover"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 180
    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    const-wide/16 p2, 0x5dc

    .line 181
    invoke-virtual {p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->incrementAndDisplayScoreMultiplier(J)V

    goto :goto_1

    .line 169
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->startBumperBonus()V

    .line 170
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    if-ne p3, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->isMultiballRolloverActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 171
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 174
    :cond_2
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    if-ne p3, v0, :cond_3

    .line 175
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getScore()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public ballInSensorRange(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 1

    .line 287
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LaunchBarrierSensor"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/SensorElement;->getElementId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LaunchBarrierRetract"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ballLost(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 2

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    .line 305
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->endBumperBonus()V

    .line 307
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    if-ne v0, v1, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->resetBumperBonuses(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 309
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    :cond_0
    return-void
.end method

.method checkForEnableMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 5

    .line 314
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperEnergy:D

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxBumperEnergy:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->upperTargetGroupCompleted:I

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxUpperTargetGroupCompleted:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxLowerTargetGroupCompleted:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->setMultiballRolloverActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    :cond_0
    return-void
.end method

.method colorForMultiballFlasher(I)I
    .locals 5

    .line 362
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballFlashValues:[D

    aget-wide v1, v0, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->colorForTemperatureRatio(D)I

    move-result p1

    return p1
.end method

.method endBumperBonus()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusActive:Z

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->setColorForBumpers(Ljava/lang/Integer;)V

    return-void
.end method

.method public gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->resetState(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 299
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    return-void
.end method

.method initializeMultiballFlashers()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballFlashValues:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 357
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballFlashIncrements:[D

    const-wide v2, 0x3fc999999999999aL    # 0.2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    sget-object v6, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->RAND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    mul-double v6, v6, v4

    add-double/2addr v6, v2

    aput-wide v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method isMultiballRolloverActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Z
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "BumperIndicator"

    .line 323
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 324
    invoke-virtual {p1, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->isRolloverActiveAtIndex(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method synthetic lambda$startMultiball$0$com-dozingcatsoftware-vectorpinball-fields-Field3Delegate(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 2

    .line 339
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    if-eq p1, v0, :cond_1

    .line 341
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    .line 342
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->initializeMultiballFlashers()V

    :cond_1
    return-void
.end method

.method public processCollision(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 9

    .line 259
    instance-of p3, p2, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

    if-eqz p3, :cond_1

    const-wide/16 p3, 0x0

    .line 261
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusActive:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    .line 262
    iget-wide p3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusNanosElapsed:J

    long-to-double p3, p3

    iget-wide v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationNanos:J

    long-to-double v3, v3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, v3

    sub-double p3, v1, p3

    .line 264
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusMultiplier:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v3

    .line 266
    invoke-virtual {p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getScore()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p3

    const-wide/16 v5, 0xa

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v7

    .line 267
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    mul-long v3, v3, v5

    invoke-virtual {p1, v3, v4}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 269
    :cond_0
    iget-wide v3, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperEnergy:D

    add-double/2addr v3, v1

    add-double/2addr v3, p3

    iget-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxBumperEnergy:D

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperEnergy:D

    .line 270
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxBumperEnergy:D

    div-double/2addr p2, v0

    const-string p4, "BumperIndicator"

    .line 271
    invoke-virtual {p1, p4}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p4

    .line 272
    invoke-static {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->colorForTemperatureRatio(D)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->checkForEnableMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    :cond_1
    return-void
.end method

.method resetBumperBonuses(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 3

    .line 138
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->baseBumperBonusDurationNanos:J

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationNanos:J

    .line 139
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->baseBumperBonusMultiplier:I

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusMultiplier:I

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperEnergy:D

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->upperTargetGroupCompleted:I

    .line 142
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->lowerTargetGroupCompleted:I

    const-string v1, "UpperTargetIndicator"

    .line 144
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    const-string v1, "LowerTargetIndicator"

    .line 145
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    const-string v1, "BumperIndicator"

    .line 146
    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->setMultiballRolloverActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V

    return-void
.end method

.method resetState(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 4

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    .line 120
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxBumperEnergy:D

    const/4 v0, 0x2

    .line 121
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxUpperTargetGroupCompleted:I

    const/4 v0, 0x5

    .line 122
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->maxLowerTargetGroupCompleted:I

    .line 124
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->baseBumperBonusDurationNanos:J

    .line 125
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->baseBumperBonusMultiplier:I

    .line 126
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->resetBumperBonuses(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    .line 130
    instance-of v2, v1, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

    if-eqz v2, :cond_0

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

    .line 134
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperElements:[Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

    return-void
.end method

.method setLaunchBarrierEnabled(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V
    .locals 1

    const-string v0, "LaunchBarrier"

    .line 280
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;

    xor-int/lit8 p2, p2, 0x1

    .line 281
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    return-void
.end method

.method setMultiballRolloverActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;Z)V
    .locals 1

    const-string v0, "BumperIndicator"

    .line 328
    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;

    .line 329
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->setAllRolloversActivated(Z)V

    return-void
.end method

.method startBumperBonus()V
    .locals 2

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusActive:Z

    const-wide/16 v0, 0x0

    .line 248
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusNanosElapsed:J

    return-void
.end method

.method startMultiball(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "multiball_started_message"

    .line 333
    invoke-virtual {p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 334
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->PENDING:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    .line 335
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->restoreLeftBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 336
    invoke-direct {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->restoreRightBallSaver(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 338
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    const-wide/16 v1, 0x3e8

    .line 345
    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    const-wide/16 v1, 0xdac

    .line 346
    invoke-virtual {p1, v1, v2, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    .line 349
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusMultiplier:I

    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusMultiplierIncrement:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusMultiplier:I

    .line 350
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationNanos:J

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationIncrement:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationNanos:J

    return-void
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 5

    .line 222
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusActive:Z

    if-eqz v0, :cond_1

    .line 223
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusNanosElapsed:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusNanosElapsed:J

    .line 224
    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->bumperBonusDurationNanos:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->endBumperBonus()V

    goto :goto_0

    :cond_0
    long-to-double v0, v0

    long-to-double v2, v2

    .line 228
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    .line 230
    invoke-static {v2, v3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->colorForTemperatureRatio(D)I

    move-result v0

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->setColorForBumpers(Ljava/lang/Integer;)V

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->ACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    if-ne v0, v1, :cond_3

    .line 235
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 237
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->resetBumperBonuses(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 238
    sget-object p1, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;->INACTIVE:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballStatus:Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate$MultiballStatus;

    goto :goto_1

    .line 241
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->tickMultiballFlashers(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method tickMultiballFlashers(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 8

    long-to-double p2, p2

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 366
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballFlashValues:[D

    aget-wide v3, v2, v1

    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->multiballFlashIncrements:[D

    aget-wide v6, v5, v1

    mul-double v6, v6, p2

    add-double/2addr v3, v6

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    sub-double/2addr v3, v5

    .line 370
    :cond_0
    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "UpperTargetIndicator"

    .line 372
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->colorForMultiballFlasher(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    const-string p2, "LowerTargetIndicator"

    .line 373
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->colorForMultiballFlasher(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    const-string p2, "BumperIndicator"

    .line 374
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field3Delegate;->colorForMultiballFlasher(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->setNewColor(Ljava/lang/Integer;)V

    return-void
.end method
