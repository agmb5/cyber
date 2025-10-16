.class public Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;
.super Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
.source "BumperElement.java"


# static fields
.field static final DEFAULT_COLOR:I

.field static final DEFAULT_OUTER_COLOR:I

.field public static final INACTIVE_LAYER_OUTER_COLOR_PROPERTY:Ljava/lang/String; = "inactiveLayerOuterColor"

.field public static final KICK_PROPERTY:Ljava/lang/String; = "kick"

.field public static final OUTER_COLOR_PROPERTY:Ljava/lang/String; = "outerColor"

.field public static final OUTER_RADIUS_PROPERTY:Ljava/lang/String; = "outerRadius"

.field public static final POSITION_PROPERTY:Ljava/lang/String; = "position"

.field public static final RADIUS_PROPERTY:Ljava/lang/String; = "radius"


# instance fields
.field bumperBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field bumperBodySet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field cx:F

.field cy:F

.field inactiveLayerOuterColor:Ljava/lang/Integer;

.field kick:F

.field newOuterColor:Ljava/lang/Integer;

.field outerColor:I

.field outerRadius:F

.field radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 30
    invoke-static {v0, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v2

    sput v2, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->DEFAULT_COLOR:I

    const/16 v2, 0x80

    .line 31
    invoke-static {v0, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGBA(IIII)I

    move-result v0

    sput v0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->DEFAULT_OUTER_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 4

    .line 61
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->radius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 62
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cx:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cy:F

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v0, v3}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createCircle(Lcom/badlogic/gdx/physics/box2d/World;FFFZ)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->bumperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 63
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->bumperBodySet:Ljava/util/List;

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->bumperBodySet:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 4

    .line 115
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->outerRadius:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->newOuterColor:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->outerColor:I

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->inactiveLayerOuterColor:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v1}, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->colorApplyingLayerOrFlash(ILjava/lang/Integer;)I

    move-result p1

    .line 119
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cx:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cy:F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->outerRadius:F

    invoke-interface {p2, v1, v2, v3, p1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->fillCircle(FFFI)V

    .line 121
    :cond_1
    iget p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->radius:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 122
    sget p1, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->DEFAULT_COLOR:I

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->currentColor(I)I

    move-result p1

    .line 123
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cx:F

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cy:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->radius:F

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->fillCircle(FFFI)V

    :cond_2
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

    .line 45
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const-string v0, "radius"

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->radius:F

    const-string v0, "outerRadius"

    .line 47
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->outerRadius:F

    const/4 v0, 0x0

    .line 48
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cx:F

    const/4 v0, 0x1

    .line 49
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cy:F

    const-string p2, "kick"

    .line 50
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->kick:F

    const-string p2, "outerColor"

    .line 51
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromList(Ljava/util/List;)I

    move-result p2

    goto :goto_0

    .line 53
    :cond_0
    sget p2, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->DEFAULT_OUTER_COLOR:I

    :goto_0
    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->outerColor:I

    const-string p2, "inactiveLayerOuterColor"

    .line 54
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromList(Ljava/util/List;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->inactiveLayerOuterColor:Ljava/lang/Integer;

    :cond_1
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

    .line 70
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->bumperBodySet:Ljava/util/List;

    return-object v0
.end method

.method public getCenter()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .line 99
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cx:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cy:F

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public handleCollision(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->impulseForBall(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;)V

    const-wide/32 p1, 0x5f5e100

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->flashForNanos(J)V

    :cond_0
    return-void
.end method

.method impulseForBall(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6

    .line 79
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->kick:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->bumperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 83
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    .line 84
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p1, v0

    float-to-double v2, v1

    float-to-double v4, p1

    .line 85
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 86
    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->kick:F

    div-float/2addr v2, v0

    .line 87
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    mul-float v1, v1, v2

    mul-float p1, p1, v2

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public setCenter(FF)V
    .locals 2

    .line 103
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cx:F

    .line 104
    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->cy:F

    .line 105
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->bumperBody:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    :cond_0
    return-void
.end method

.method public setNewOuterColor(Ljava/lang/Integer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;->newOuterColor:Ljava/lang/Integer;

    return-void
.end method

.method public shouldCallTick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
