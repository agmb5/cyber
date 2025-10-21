.class public Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;
.super Ljava/lang/Object;
.source "WorldLayers.java"


# instance fields
.field private contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

.field private gravity:Lcom/badlogic/gdx/math/Vector2;

.field private layerWorlds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/World;",
            ">;"
        }
    .end annotation
.end field

.field private worldsByLayer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/badlogic/gdx/physics/box2d/World;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->gravity:Lcom/badlogic/gdx/math/Vector2;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->worldsByLayer:Ljava/util/HashMap;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->layerWorlds:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    return-void
.end method

.method private _rebuildArrays()V
    .locals 4

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->worldsByLayer:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->worldsByLayer:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->layerWorlds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public existingOrNewWorldForLayer(I)Lcom/badlogic/gdx/physics/box2d/World;
    .locals 3

    .line 42
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->existingWorldForLayer(I)Lcom/badlogic/gdx/physics/box2d/World;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->gravity:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;-><init>(Lcom/badlogic/gdx/math/Vector2;Z)V

    .line 45
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V

    .line 46
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->worldsByLayer:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->_rebuildArrays()V

    :cond_0
    return-object v0
.end method

.method public existingWorldForLayer(I)Lcom/badlogic/gdx/physics/box2d/World;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->worldsByLayer:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/World;

    return-object p1
.end method

.method setGravity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 2

    .line 53
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->gravity:Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->layerWorlds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->layerWorlds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/World;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->gravity:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method step(FII)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->layerWorlds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 62
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->layerWorlds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {v2, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/World;->step(FII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
