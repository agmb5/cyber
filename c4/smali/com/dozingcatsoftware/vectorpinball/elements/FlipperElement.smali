.class public Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;
.super Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
.source "FlipperElement.java"


# static fields
.field static final DEFAULT_COLOR:I

.field public static final DOWN_SPEED_PROPERTY:Ljava/lang/String; = "downspeed"

.field public static final LENGTH_PROPERTY:Ljava/lang/String; = "length"

.field public static final MAX_ANGLE_PROPERTY:Ljava/lang/String; = "maxangle"

.field public static final MIN_ANGLE_PROPERTY:Ljava/lang/String; = "minangle"

.field public static final POSITION_PROPERTY:Ljava/lang/String; = "position"

.field public static final UP_SPEED_PROPERTY:Ljava/lang/String; = "upspeed"


# instance fields
.field public anchorBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field cx:F

.field cy:F

.field downspeed:F

.field flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field flipperBodySet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field flipperDownAngle:F

.field flipperLength:F

.field flipperUpAngle:F

.field public joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

.field jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

.field upspeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 45
    invoke-static {v0, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v0

    sput v0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 12

    .line 79
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cx:F

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cy:F

    const v2, 0x3d4ccccd    # 0.05f

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createCircle(Lcom/badlogic/gdx/physics/box2d/World;FFFZ)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->anchorBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 82
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, -0x42b33333    # -0.05f

    .line 83
    :goto_0
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cx:F

    float-to-double v0, v0

    float-to-double v4, v2

    iget v6, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperDownAngle:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    double-to-float v0, v0

    .line 84
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cx:F

    float-to-double v6, v1

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperLength:F

    float-to-double v8, v1

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperDownAngle:F

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 85
    iget v6, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cy:F

    float-to-double v6, v6

    iget v8, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperDownAngle:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    double-to-float v4, v6

    .line 86
    iget v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cy:F

    float-to-double v5, v5

    iget v7, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperLength:F

    float-to-double v7, v7

    iget v9, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperDownAngle:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-float v5, v5

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v4, v5

    div-float/2addr v4, v1

    .line 89
    iget v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperLength:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v5, v2

    div-float/2addr v5, v1

    sub-float v7, v0, v5

    const v1, 0x3df5c28f    # 0.12f

    sub-float v8, v4, v1

    add-float v9, v0, v5

    add-float v10, v4, v1

    .line 91
    iget v11, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperDownAngle:F

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 98
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 99
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/physics/box2d/Body;->setBullet(Z)V

    .line 100
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setDensity(F)V

    .line 102
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    .line 103
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->anchorBody:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cx:F

    iget v6, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cy:F

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->initialize(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/math/Vector2;)V

    .line 104
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iput-boolean v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableLimit:Z

    .line 105
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iput-boolean v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableMotor:Z

    .line 109
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isReversed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperUpAngle:F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperDownAngle:F

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    .line 111
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    .line 115
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperUpAngle:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperDownAngle:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    const/high16 v1, 0x447a0000    # 1000.0f

    iput v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->maxMotorTorque:F

    .line 119
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/World;->createJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)Lcom/badlogic/gdx/physics/box2d/Joint;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    .line 121
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperBodySet:Ljava/util/List;

    .line 122
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->downspeed:F

    neg-float p1, p1

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->setEffectiveMotorSpeed(F)V

    return-void
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 9

    .line 190
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->anchorBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    .line 194
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;->getJointAngle()F

    move-result v0

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v1, v1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget v2, v2, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    .line 193
    invoke-static {v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->clamp(FFF)F

    move-result v0

    .line 195
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperDownAngle:F

    add-float/2addr v1, v0

    .line 196
    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 197
    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 198
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperLength:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 199
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperLength:F

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float v1, v1, v2

    add-float v6, p1, v1

    .line 201
    sget p1, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->DEFAULT_COLOR:I

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->currentColor(I)I

    move-result v7

    move-object v2, p2

    move v5, v0

    invoke-interface/range {v2 .. v7}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->drawLine(FFFFI)V

    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;",
            ")V"
        }
    .end annotation

    const-string p2, "position"

    .line 61
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    .line 63
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cx:F

    const/4 v0, 0x1

    .line 64
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->cy:F

    const-string p2, "length"

    .line 65
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperLength:F

    const-string p2, "upspeed"

    .line 66
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->upspeed:F

    const-string p2, "downspeed"

    .line 67
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->downspeed:F

    const-string p2, "minangle"

    .line 72
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->toRadiansF(F)F

    move-result p2

    const-string v0, "maxangle"

    .line 73
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->toRadiansF(F)F

    move-result p1

    .line 74
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    neg-float p2, p2

    :cond_0
    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperDownAngle:F

    .line 75
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isReversed()Z

    move-result p2

    if-eqz p2, :cond_1

    neg-float p1, p1

    :cond_1
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperUpAngle:F

    return-void
.end method

.method public getBodies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperBodySet:Ljava/util/List;

    return-object v0
.end method

.method getEffectiveMotorSpeed()F
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;->getMotorSpeed()F

    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-float v0, v0

    :cond_0
    return v0
.end method

.method public isFlipperEngaged()Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->getEffectiveMotorSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeftFlipper()Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isReversed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isReversed()Z
    .locals 2

    .line 127
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->flipperLength:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRightFlipper()Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isReversed()Z

    move-result v0

    return v0
.end method

.method setEffectiveMotorSpeed(F)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_0

    neg-float p1, p1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;->setMotorSpeed(F)V

    return-void
.end method

.method public setFlipperEngaged(Z)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isFlipperEngaged()Z

    move-result v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 183
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->upspeed:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->downspeed:F

    neg-float p1, p1

    .line 184
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->setEffectiveMotorSpeed(F)V

    :cond_1
    return-void
.end method

.method public shouldCallTick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 4

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V

    .line 167
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->getEffectiveMotorSpeed()F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isReversed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget p1, p1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->jointDef:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    iget p1, p1, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    .line 169
    :goto_0
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->joint:Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    invoke-virtual {p3}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;->getJointAngle()F

    move-result p3

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    .line 170
    invoke-virtual {p0, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->setEffectiveMotorSpeed(F)V

    :cond_1
    return-void
.end method
