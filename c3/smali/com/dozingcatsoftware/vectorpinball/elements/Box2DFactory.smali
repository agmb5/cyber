.class public Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;
.super Ljava/lang/Object;
.source "Box2DFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircle(Lcom/badlogic/gdx/physics/box2d/World;FFFZ)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 2

    .line 18
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>()V

    .line 19
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/physics/box2d/CircleShape;->setRadius(F)V

    .line 21
    new-instance p3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {p3}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 22
    iput-object v0, p3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    const v0, 0x3e99999a    # 0.3f

    .line 24
    iput v0, p3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->friction:F

    const v0, 0x3f19999a    # 0.6f

    .line 25
    iput v0, p3, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 27
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    .line 29
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 30
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p0

    .line 31
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    if-eqz p4, :cond_0

    .line 33
    sget-object p1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    goto :goto_0

    .line 36
    :cond_0
    sget-object p1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->DynamicBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    :goto_0
    return-object p0
.end method

.method public static createThinWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 16

    add-float v0, p1, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v2, p2, p4

    div-float/2addr v2, v1

    sub-float v3, p4, p2

    float-to-double v3, v3

    sub-float v5, p3, p1

    float-to-double v5, v5

    .line 86
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v14, v7

    .line 87
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v3, v1

    sub-float v10, v0, v3

    const v1, 0x3d4ccccd    # 0.05f

    sub-float v11, v2, v1

    add-float v12, v0, v3

    add-float v13, v2, v1

    move-object/from16 v9, p0

    move/from16 v15, p5

    .line 88
    invoke-static/range {v9 .. v15}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    return-object v0
.end method

.method public static createWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 47
    invoke-static/range {v0 .. v6}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p0

    return-object p0
.end method

.method public static createWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFFF)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 3

    add-float v0, p1, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float v2, p2, p4

    div-float/2addr v2, v1

    sub-float/2addr p3, p1

    div-float/2addr p3, v1

    .line 59
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    .line 60
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 61
    new-instance p3, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {p3}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 64
    new-instance p4, Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    invoke-direct {p4, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p3, p1, p2, p4, v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FFLcom/badlogic/gdx/math/Vector2;F)V

    .line 66
    new-instance p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;

    invoke-direct {p1}, Lcom/badlogic/gdx/physics/box2d/FixtureDef;-><init>()V

    .line 67
    iput-object p3, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 68
    iput p2, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->density:F

    cmpl-float p2, p6, v1

    if-lez p2, :cond_0

    .line 69
    iput p6, p1, Lcom/badlogic/gdx/physics/box2d/FixtureDef;->restitution:F

    .line 71
    :cond_0
    new-instance p2, Lcom/badlogic/gdx/physics/box2d/BodyDef;

    invoke-direct {p2}, Lcom/badlogic/gdx/physics/box2d/BodyDef;-><init>()V

    .line 72
    iget-object p3, p2, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p3, v0, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 73
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/physics/box2d/World;->createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->createFixture(Lcom/badlogic/gdx/physics/box2d/FixtureDef;)Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 75
    sget-object p1, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->StaticBody:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Body;->setType(Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;)V

    .line 76
    invoke-virtual {p0, v0, v2, p5}, Lcom/badlogic/gdx/physics/box2d/Body;->setTransform(FFF)V

    return-object p0
.end method
