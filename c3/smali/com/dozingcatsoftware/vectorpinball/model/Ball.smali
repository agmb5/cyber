.class public Lcom/dozingcatsoftware/vectorpinball/model/Ball;
.super Ljava/lang/Object;
.source "Ball.java"

# interfaces
.implements Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;


# instance fields
.field private body:Lcom/badlogic/gdx/physics/box2d/Body;

.field private layer:I

.field private mostRecentSensorId:Ljava/lang/String;

.field private primaryColor:I

.field private secondaryColor:I

.field private worlds:Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;


# direct methods
.method private constructor <init>(Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;ILcom/badlogic/gdx/physics/box2d/Body;II)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->worlds:Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;

    .line 25
    iput p2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->layer:I

    .line 26
    iput-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 27
    iput p4, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->primaryColor:I

    .line 28
    iput p5, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->secondaryColor:I

    return-void
.end method

.method private copyBodyToWorld(Lcom/badlogic/gdx/physics/box2d/World;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 121
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getRadius()F

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->createBody(Lcom/badlogic/gdx/physics/box2d/World;FFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p1

    .line 122
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    .line 123
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 124
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngularVelocity()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->setAngularVelocity(F)V

    return-object p1
.end method

.method public static create(Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;IFFFII)Lcom/dozingcatsoftware/vectorpinball/model/Ball;
    .locals 7

    .line 34
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->existingWorldForLayer(I)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->createBody(Lcom/badlogic/gdx/physics/box2d/World;FFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    .line 35
    new-instance p2, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    move-object v1, p2

    move-object v2, p0

    move v3, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;-><init>(Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;ILcom/badlogic/gdx/physics/box2d/Body;II)V

    return-object p2
.end method

.method private static createBody(Lcom/badlogic/gdx/physics/box2d/World;FFF)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, p2, p3, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createCircle(Lcom/badlogic/gdx/physics/box2d/World;FFFZ)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p0

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setBullet(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    mul-float p3, p3, p3

    const/high16 p2, 0x3e800000    # 0.25f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setDensity(F)V

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/Body;->resetMassData()V

    return-object p0
.end method


# virtual methods
.method public applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorldCenter()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Body;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Z)V

    return-void
.end method

.method destroySelf()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorld()Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    return-void
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 5

    .line 49
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getRadius()F

    move-result v0

    .line 51
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->primaryColor:I

    invoke-interface {p2, v1, v2, v0, v3}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->fillCircle(FFFI)V

    .line 54
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v1}, Lcom/badlogic/gdx/physics/box2d/Body;->getAngle()F

    move-result v1

    .line 55
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    .line 56
    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    mul-float v3, v3, v1

    add-float/2addr p1, v3

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    .line 57
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->secondaryColor:I

    invoke-interface {p2, v2, p1, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->fillCircle(FFFI)V

    return-void
.end method

.method public getBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getLayer()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->layer:I

    return v0
.end method

.method public getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentSensorId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->mostRecentSensorId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->primaryColor:I

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getShape()Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    .line 82
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->getRadius()F

    move-result v0

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->secondaryColor:I

    return v0
.end method

.method public moveToLayer(I)V
    .locals 2

    .line 110
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->layer:I

    if-ne v0, p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 114
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->worlds:Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;

    invoke-virtual {v1, p1}, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->existingOrNewWorldForLayer(I)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->copyBodyToWorld(Lcom/badlogic/gdx/physics/box2d/World;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 115
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->layer:I

    .line 116
    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Body;->getWorld()Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/World;->destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V

    return-void
.end method

.method public setMostRecentSensorId(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->mostRecentSensorId:Ljava/lang/String;

    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->primaryColor:I

    return-void
.end method

.method public setSecondaryColor(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->secondaryColor:I

    return-void
.end method
