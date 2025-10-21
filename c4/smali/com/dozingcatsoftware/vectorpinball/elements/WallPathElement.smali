.class public Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;
.super Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
.source "WallPathElement.java"


# static fields
.field public static final IGNORE_BALL_PROPERTY:Ljava/lang/String; = "ignoreBall"

.field public static final POSITIONS_PROPERTY:Ljava/lang/String; = "positions"


# instance fields
.field private wallBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private xEndpoints:[F

.field private yEndpoints:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->wallBodies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 9

    const-string v0, "ignoreBall"

    .line 46
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->getBooleanParameterValueForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->xEndpoints:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 50
    aget v4, v1, v2

    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->yEndpoints:[F

    aget v5, v3, v2

    aget v6, v1, v0

    aget v7, v3, v0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/dozingcatsoftware/vectorpinball/elements/Box2DFactory;->createThinWall(Lcom/badlogic/gdx/physics/box2d/World;FFFFF)Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->wallBodies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 2

    .line 61
    sget p1, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->DEFAULT_WALL_COLOR:I

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->currentColor(I)I

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->xEndpoints:[F

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->yEndpoints:[F

    invoke-interface {p2, v0, v1, p1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->drawLinePath([F[FI)V

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

    const-string p2, "positions"

    .line 34
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->xEndpoints:[F

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->yEndpoints:[F

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 40
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->xEndpoints:[F

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v3

    aput v3, v2, v0

    .line 41
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->yEndpoints:[F

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    .line 57
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/WallPathElement;->wallBodies:Ljava/util/List;

    return-object v0
.end method
