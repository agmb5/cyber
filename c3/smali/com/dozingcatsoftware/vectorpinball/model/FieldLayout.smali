.class public Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;
.super Ljava/lang/Object;
.source "FieldLayout.java"


# static fields
.field static final BALL_COLOR_PROPERTY:Ljava/lang/String; = "ballcolor"

.field static final BALL_RADIUS_PROPERTY:Ljava/lang/String; = "ballradius"

.field static final DEFAULT_BALL_COLOR:I

.field static final DEFAULT_SECONDARY_BALL_COLOR:I

.field static final DELEGATE_PROPERTY:Ljava/lang/String; = "delegate"

.field static final ELEMENTS_PROPERTY:Ljava/lang/String; = "elements"

.field static final GRAVITY_PROPERTY:Ljava/lang/String; = "gravity"

.field static final HEIGHT_PROPERTY:Ljava/lang/String; = "height"

.field static final LAUNCH_DEAD_ZONE_PROPERTY:Ljava/lang/String; = "launchDeadZone"

.field static final LAUNCH_POSITION_PROPERTY:Ljava/lang/String; = "launchPosition"

.field static final LAUNCH_RANDOM_VELOCITY_PROPERTY:Ljava/lang/String; = "launchVelocityRandomDelta"

.field static final LAUNCH_VELOCITY_PROPERTY:Ljava/lang/String; = "launchVelocity"

.field static final MERCY_BALL_DURATION_PROPERTY:Ljava/lang/String; = "mercyBallDuration"

.field static final MULTIBALL_SAVER_DURATION_PROPERTY:Ljava/lang/String; = "multiballSaverDuration"

.field static final NUM_BALLS_PROPERTY:Ljava/lang/String; = "numballs"

.field static final PRESERVE_MULTIPLIER_INCREASE_DURATION_PROPERTY:Ljava/lang/String; = "preserveMultiplierIncreaseDuration"

.field static final SCRIPT_PROPERTY:Ljava/lang/String; = "script"

.field static final SECONDARY_BALL_COLOR_PROPERTY:Ljava/lang/String; = "secondaryBallColor"

.field static final TARGET_TIME_RATIO_PROPERTY:Ljava/lang/String; = "targetTimeRatio"

.field static final VARIABLES_PROPERTY:Ljava/lang/String; = "variables"

.field static final WIDTH_PROPERTY:Ljava/lang/String; = "width"


# instance fields
.field RAND:Ljava/util/Random;

.field allParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field ballColor:I

.field ballRadius:F

.field fieldElements:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;

.field gravity:F

.field height:F

.field launchDeadZoneRect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field launchPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field launchVelocity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field launchVelocityRandomDelta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mercyBallDurationMillis:J

.field multiballSaverDurationMillis:J

.field numberOfBalls:I

.field preserveMultiplierIncreaseDurationMillis:J

.field secondaryBallColor:I

.field targetTimeRatio:F

.field width:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v0

    sput v0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->DEFAULT_BALL_COLOR:I

    const/16 v0, 0xb0

    .line 66
    invoke-static {v0, v0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v0

    sput v0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->DEFAULT_SECONDARY_BALL_COLOR:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->RAND:Ljava/util/Random;

    const-string v0, "width"

    .line 69
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;F)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->width:F

    const-string v0, "height"

    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;F)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->height:F

    const-string v0, "gravity"

    .line 71
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;F)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->gravity:F

    const-string v0, "targetTimeRatio"

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->targetTimeRatio:F

    const-string v0, "mercyBallDuration"

    .line 73
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->mercyBallDurationMillis:J

    const-string v0, "multiballSaverDuration"

    .line 74
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->multiballSaverDurationMillis:J

    const-string v0, "preserveMultiplierIncreaseDuration"

    const/16 v1, 0x1d4c

    .line 75
    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->preserveMultiplierIncreaseDurationMillis:J

    const-string v0, "numballs"

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->numberOfBalls:I

    const-string v0, "ballradius"

    .line 77
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;F)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->ballRadius:F

    .line 78
    sget v0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->DEFAULT_BALL_COLOR:I

    const-string v1, "ballcolor"

    invoke-direct {p0, p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->colorFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->ballColor:I

    .line 79
    sget v0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->DEFAULT_SECONDARY_BALL_COLOR:I

    const-string v1, "secondaryBallColor"

    invoke-direct {p0, p1, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->colorFromMap(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->secondaryBallColor:I

    const-string v0, "launchPosition"

    .line 81
    invoke-static {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchPosition:Ljava/util/List;

    const-string v0, "launchVelocity"

    .line 82
    invoke-static {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchVelocity:Ljava/util/List;

    const-string v0, "launchVelocityRandomDelta"

    .line 83
    invoke-static {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    const-string v0, "launchDeadZone"

    .line 84
    invoke-static {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloatList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchDeadZoneRect:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->allParameters:Ljava/util/Map;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->createFieldElements(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->fieldElements:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;

    return-void
.end method

.method private colorFromMap(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 119
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 120
    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromList(Ljava/util/List;)I

    move-result p3

    :cond_0
    return p3
.end method

.method private createFieldElements(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;",
            ")",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;-><init>()V

    const-string v1, "variables"

    .line 100
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 103
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->setVariable(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "elements"

    .line 107
    invoke-static {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 108
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    check-cast v1, Ljava/util/Map;

    .line 111
    invoke-static {v1, v0, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->createFromParameters(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->addElement(Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method static listForKey(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 91
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 92
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBallColor()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->ballColor:I

    return v0
.end method

.method public getBallRadius()F
    .locals 1

    .line 140
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->ballRadius:F

    return v0
.end method

.method public getDelegateClassName()Ljava/lang/String;
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->allParameters:Ljava/util/Map;

    const-string v1, "delegate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFieldElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->fieldElements:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->getAllElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->fieldElements:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->getFlipperElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGravity()F
    .locals 1

    .line 210
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->gravity:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 196
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->height:F

    return v0
.end method

.method public getLaunchDeadZone()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchDeadZoneRect:Ljava/util/List;

    return-object v0
.end method

.method public getLaunchPosition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchPosition:Ljava/util/List;

    return-object v0
.end method

.method public getLaunchVelocity()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchVelocity:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 178
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchVelocity:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 180
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 181
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 182
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v7, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->RAND:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float v4, v4, v7

    add-float/2addr v0, v4

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    .line 185
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->launchVelocityRandomDelta:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->RAND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float v4, v4, v6

    add-float/2addr v2, v4

    :cond_1
    new-array v4, v5, [Ljava/lang/Float;

    .line 188
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLeftFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->fieldElements:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->getLeftFlipperElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMercyBallDurationNanos()J
    .locals 4

    .line 156
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->mercyBallDurationMillis:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getMultiballSaverDurationNanos()J
    .locals 4

    .line 160
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->multiballSaverDurationMillis:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getNumberOfBalls()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->numberOfBalls:I

    return v0
.end method

.method public getPreserveMultiplierIncreaseDurationNanos()J
    .locals 4

    .line 164
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->preserveMultiplierIncreaseDurationMillis:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getRightFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->fieldElements:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->getRightFlipperElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScriptText()Ljava/lang/String;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->allParameters:Ljava/util/Map;

    const-string v1, "script"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryBallColor()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->secondaryBallColor:I

    return v0
.end method

.method public getTargetTimeRatio()F
    .locals 1

    .line 205
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->targetTimeRatio:F

    return v0
.end method

.method public getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->fieldElements:Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;->getVariable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()F
    .locals 1

    .line 192
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->width:F

    return v0
.end method
