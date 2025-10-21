.class public Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;
.super Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
.source "WallElement.java"


# static fields
.field public static final DISABLED_PROPERTY:Ljava/lang/String; = "disabled"

.field public static final IGNORE_BALL_PROPERTY:Ljava/lang/String; = "ignoreBall"

.field public static final KICK_PROPERTY:Ljava/lang/String; = "kick"

.field public static final KILL_PROPERTY:Ljava/lang/String; = "kill"

.field public static final POSITION_PROPERTY:Ljava/lang/String; = "position"

.field public static final RESTITUTION_PROPERTY:Ljava/lang/String; = "restitution"

.field public static final RETRACT_WHEN_HIT_PROPERTY:Ljava/lang/String; = "retractWhenHit"


# instance fields
.field bodySet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field disabled:Z

.field ignoreBall:Z

.field kick:F

.field killBall:Z

.field length:F

.field restitution:F

.field retractWhenHit:Z

.field visible:Z

.field wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->visible:Z

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 6

    .line 75
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->ignoreBall:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->bodySet:Ljava/util/List;

    return-void

    .line 80
    :cond_0
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x1:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y1:F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x2:F

    iget v4, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y2:F

    iget v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->restitution:F

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createThinWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 81
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->bodySet:Ljava/util/List;

    .line 82
    iget-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->disabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    :cond_1
    return-void
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 6

    .line 167
    iget-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->visible:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->isRetracted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x1:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y1:F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x2:F

    iget v4, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y2:F

    sget p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->DEFAULT_WALL_COLOR:I

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->currentColor(I)I

    move-result v5

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->drawLine(FFFFI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;)V
    .locals 4
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

    .line 59
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    .line 60
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x1:F

    const/4 v0, 0x1

    .line 61
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y1:F

    const/4 v0, 0x2

    .line 62
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x2:F

    const/4 v0, 0x3

    .line 63
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y2:F

    .line 64
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x2:F

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x1:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y1:F

    sub-float/2addr p2, v2

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->length:F

    const-string p2, "restitution"

    .line 65
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->restitution:F

    const-string p2, "kick"

    .line 67
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result p2

    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->kick:F

    .line 68
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "kill"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->killBall:Z

    .line 69
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "retractWhenHit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->retractWhenHit:Z

    .line 70
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "disabled"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->disabled:Z

    .line 71
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "ignoreBall"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->ignoreBall:Z

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

    .line 102
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->bodySet:Ljava/util/List;

    return-object v0
.end method

.method public handleCollision(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    .line 134
    iget-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->retractWhenHit:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 135
    invoke-virtual {p0, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setRetracted(Z)V

    .line 138
    :cond_0
    iget-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->killBall:Z

    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {p3, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->removeBall(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->impulseForBall(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 144
    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;)V

    const-wide/32 p1, 0x5f5e100

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->flashForNanos(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method impulseForBall(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6

    .line 111
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->kick:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_0
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y2:F

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y1:F

    sub-float/2addr v0, v1

    .line 114
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x1:F

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x2:F

    sub-float/2addr v1, v2

    float-to-double v2, v0

    float-to-double v4, v1

    .line 115
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 116
    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->kick:F

    div-float/2addr v3, v2

    mul-float v0, v0, v3

    mul-float v1, v1, v3

    .line 122
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    .line 123
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x1:F

    sub-float/2addr v2, v3

    .line 124
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y1:F

    sub-float/2addr p1, v3

    mul-float v2, v2, v0

    mul-float p1, p1, v1

    add-float/2addr v2, p1

    const/4 p1, 0x0

    cmpg-float p1, v2, p1

    if-gez p1, :cond_1

    neg-float v0, v0

    neg-float v1, v1

    .line 130
    :cond_1
    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object p1
.end method

.method public isRetracted()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setRetracted(Z)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->isRetracted()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public setStartAndAngle(FFF)V
    .locals 6

    .line 157
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x1:F

    .line 158
    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y1:F

    .line 159
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->length:F

    float-to-double v0, v0

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x2:F

    .line 160
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->length:F

    float-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->y2:F

    .line 163
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->wallBody:Lcom/badlogic/gdx/physics/box2d/Body;

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->x2:F

    add-float/2addr p1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr p2, v0

    div-float/2addr p2, v2

    invoke-virtual {v1, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    return-void
.end method

.method public setStartAndDirection(FFFF)V
    .locals 2

    sub-float/2addr p4, p2

    float-to-double v0, p4

    sub-float/2addr p3, p1

    float-to-double p3, p3

    .line 153
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p3

    double-to-float p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->setStartAndAngle(FFF)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->visible:Z

    return-void
.end method

.method public shouldCallTick()Z
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->shouldCallTick()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallElement;->kick:F

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
