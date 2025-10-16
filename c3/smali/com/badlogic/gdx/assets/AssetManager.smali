.class public Lcom/badlogic/gdx/assets/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field final assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final assets:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/RefCountedContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field final executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

.field final injected:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

.field final loadQueue:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field loaded:I

.field final loaders:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field log:Lcom/badlogic/gdx/utils/Logger;

.field peakTasks:I

.field final resolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

.field final tasks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/badlogic/gdx/assets/AssetLoadingTask;",
            ">;"
        }
    .end annotation
.end field

.field toLoad:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Z)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 71
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->injected:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 74
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 75
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    .line 78
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "AssetManager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Logger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    .line 102
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->resolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    if-eqz p2, :cond_0

    .line 104
    const-class p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 105
    const-class p2, Lcom/badlogic/gdx/audio/Music;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/MusicLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 106
    const-class p2, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/PixmapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 107
    const-class p2, Lcom/badlogic/gdx/audio/Sound;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/SoundLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/SoundLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 108
    const-class p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/TextureAtlasLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 109
    const-class p2, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/TextureLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 110
    const-class p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/SkinLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/SkinLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 111
    const-class p2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/ParticleEffectLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 112
    const-class p2, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffectLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 114
    const-class p2, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 115
    const-class p2, Lcom/badlogic/gdx/utils/I18NBundle;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 116
    const-class p2, Lcom/badlogic/gdx/graphics/g3d/Model;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;

    new-instance v2, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-direct {v0, v2, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    const-string v2, ".g3dj"

    invoke-virtual {p0, p2, v2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 117
    const-class p2, Lcom/badlogic/gdx/graphics/g3d/Model;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;

    new-instance v2, Lcom/badlogic/gdx/utils/UBJsonReader;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/UBJsonReader;-><init>()V

    invoke-direct {v0, v2, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/G3dModelLoader;-><init>(Lcom/badlogic/gdx/utils/BaseJsonReader;Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    const-string v2, ".g3db"

    invoke-virtual {p0, p2, v2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 118
    const-class p2, Lcom/badlogic/gdx/graphics/g3d/Model;

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    const-string v2, ".obj"

    invoke-virtual {p0, p2, v2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 119
    const-class p2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/ShaderProgramLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 120
    const-class p2, Lcom/badlogic/gdx/graphics/Cubemap;

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V

    .line 122
    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v1}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    return-void
.end method

.method private addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 4

    .line 534
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    new-instance v2, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/badlogic/gdx/assets/AssetLoadingTask;-><init>(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/assets/AssetDescriptor;Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/utils/async/AsyncExecutor;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    return-void

    .line 535
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No loader for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleTaskError(Ljava/lang/Throwable;)V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Error loading asset."

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 619
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 622
    iget-boolean v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    if-eqz v2, :cond_0

    .line 623
    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 624
    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;

    if-eqz v0, :cond_1

    .line 632
    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/assets/AssetErrorListener;->error(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/Throwable;)V

    return-void

    .line 634
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 615
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private incrementRefCountedDependencies(Ljava/lang/String;)V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    if-nez p1, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 604
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 605
    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->incRefCount()V

    .line 606
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized injectDependency(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 2

    monitor-enter p0

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 492
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_0
    iget-object p1, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 497
    iget-object p1, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 498
    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dependency already loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 500
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 501
    invoke-virtual {p1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->incRefCount()V

    .line 502
    iget-object p1, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading dependency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/assets/AssetManager;->addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private nextTask()V
    .locals 4

    .line 513
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 516
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 519
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 520
    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->incRefCount()V

    .line 521
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/assets/AssetManager;->incrementRefCountedDependencies(Ljava/lang/String;)V

    .line 522
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v1, p0, v2, v0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V

    .line 524
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    goto :goto_0

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/AssetManager;->addTask(Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    :goto_0
    return-void
.end method

.method private updateTask()Z
    .locals 8

    .line 557
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 561
    :try_start_0
    iget-boolean v3, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->update()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 563
    iput-boolean v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    .line 564
    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {p0, v4, v3}, Lcom/badlogic/gdx/assets/AssetManager;->taskFailed(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/RuntimeException;)V

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_5

    .line 570
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 571
    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 572
    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    .line 574
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 576
    iget-boolean v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    if-eqz v1, :cond_3

    return v2

    .line 578
    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v4}, Lcom/badlogic/gdx/assets/AssetManager;->addAsset(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 581
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz v1, :cond_4

    .line 582
    iget-object v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    iget-object v3, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v4, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {v1, p0, v3, v4}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V

    .line 584
    :cond_4
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v3

    .line 585
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->startTime:J

    sub-long/2addr v3, v6

    long-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "ms "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method protected addAsset(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 549
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_0
    new-instance p2, Lcom/badlogic/gdx/assets/RefCountedContainer;

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/assets/RefCountedContainer;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 7

    monitor-enter p0

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 695
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    .line 699
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const/4 v2, 0x0

    if-lez v1, :cond_7

    .line 701
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear()V

    .line 702
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 704
    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    goto :goto_1

    .line 706
    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 707
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Array;

    if-nez v4, :cond_4

    goto :goto_2

    .line 709
    :cond_4
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 710
    invoke-virtual {v0, v5, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 712
    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    goto :goto_3

    .line 717
    :cond_5
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 718
    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_4

    .line 721
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 722
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 723
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 724
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 725
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 726
    iput v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    .line 727
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 728
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized contains(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 4

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 189
    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    if-ne v2, p2, :cond_0

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 192
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 194
    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    if-ne v3, p2, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized containsAsset(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 270
    monitor-exit p0

    return v1

    .line 271
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 272
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/assets/RefCountedContainer;

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_2

    .line 273
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    :cond_2
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 275
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Disposing."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->clear()V

    .line 689
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finishLoading()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Waiting for loading to complete..."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 440
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    const-string v1, "Loading complete."

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public finishLoadingAsset(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ")TT;"
        }
    .end annotation

    .line 448
    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoadingAsset(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadingAsset(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for asset to be loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 456
    :goto_0
    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 459
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 466
    monitor-exit p0

    return-object v0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    .line 472
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 472
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/badlogic/gdx/assets/AssetDescriptor<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v1, :cond_2

    .line 138
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 142
    monitor-exit p0

    return-object v0

    .line 141
    :cond_0
    :try_start_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset not loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset not loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset not loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset not loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/RefCountedContainer;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 155
    monitor-exit p0

    return-object p2

    .line 154
    :cond_0
    :try_start_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 152
    :cond_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 150
    :cond_2
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAll(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 164
    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :cond_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 282
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 283
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 284
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/assets/RefCountedContainer;

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_2

    .line 285
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    :cond_2
    monitor-exit p0

    return-object v3

    :cond_3
    const/4 p1, 0x0

    .line 288
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized getAssetNames()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAssetType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    monitor-enter p0

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDependencies(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDiagnostics()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 758
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 759
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 760
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 762
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 765
    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 766
    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    .line 768
    invoke-static {v3}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", refs: "

    .line 770
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v4}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getRefCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    const-string v3, ", deps: ["

    .line 774
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 776
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 777
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "]"

    .line 779
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 782
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getFileHandleResolver()Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->resolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    return-object v0
.end method

.method public declared-synchronized getLoadedAssets()I
    .locals 1

    monitor-enter p0

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLoader(Ljava/lang/Class;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object p1

    return-object p1
.end method

.method public getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 328
    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 329
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    return-object p1

    :cond_1
    const/4 v1, -0x1

    .line 332
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 333
    iget-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    iget-object v3, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    iget-object v0, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    .line 335
    iget-object v1, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getLogger()Lcom/badlogic/gdx/utils/Logger;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    return-object v0
.end method

.method public declared-synchronized getProgress()F
    .locals 4

    monitor-enter p0

    .line 670
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 671
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    int-to-float v0, v0

    .line 672
    iget v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    if-lez v2, :cond_1

    .line 673
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 675
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueuedAssets()I
    .locals 2

    monitor-enter p0

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReferenceCount(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 745
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getRefCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 744
    :cond_0
    :try_start_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset not loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized injectDependencies(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->injected:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 479
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 480
    iget-object v2, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    iget-object v2, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-direct {p0, p1, v1}, Lcom/badlogic/gdx/assets/AssetManager;->injectDependency(Ljava/lang/String;Lcom/badlogic/gdx/assets/AssetDescriptor;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    .line 484
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->clear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized isFinished()Z
    .locals 1

    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoaded(Lcom/badlogic/gdx/assets/AssetDescriptor;)Z
    .locals 0

    monitor-enter p0

    .line 294
    :try_start_0
    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isLoaded(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 300
    monitor-exit p0

    return p1

    .line 301
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isLoaded(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2

    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 308
    monitor-exit p0

    return v1

    .line 309
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/assets/RefCountedContainer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 310
    monitor-exit p0

    return v1

    .line 311
    :cond_1
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Lcom/badlogic/gdx/assets/AssetDescriptor;)V
    .locals 2

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 345
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 353
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/badlogic/gdx/assets/AssetManager;->getLoader(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 358
    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaded:I

    .line 359
    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 360
    iput v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->peakTasks:I

    :cond_0
    const/4 v0, 0x0

    .line 366
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_3

    .line 367
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 368
    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset with name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already in preload queue, but has different type (expected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    iget-object v0, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 376
    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already in task list, but has different type (expected: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 382
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 383
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 384
    :cond_7
    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already loaded, but has different type (expected: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 387
    :cond_8
    :goto_4
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 388
    new-instance v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 389
    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 390
    iget-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Queued: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 354
    :cond_9
    :try_start_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No loader for type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized setErrorListener(Lcom/badlogic/gdx/assets/AssetErrorListener;)V
    .locals 0

    monitor-enter p0

    .line 681
    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->listener:Lcom/badlogic/gdx/assets/AssetErrorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoader(Ljava/lang/Class;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader<",
            "TT;TP;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 641
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/assets/AssetManager;->setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLoader(Ljava/lang/Class;Ljava/lang/String;Lcom/badlogic/gdx/assets/loaders/AssetLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "P:",
            "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/assets/loaders/AssetLoader<",
            "TT;TP;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loader set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Logger;->debug(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->loaders:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 655
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    monitor-exit p0

    return-void

    .line 651
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "loader cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 650
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLogger(Lcom/badlogic/gdx/utils/Logger;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    return-void
.end method

.method public declared-synchronized setReferenceCount(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 753
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/assets/RefCountedContainer;->setRefCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    monitor-exit p0

    return-void

    .line 752
    :cond_0
    :try_start_1
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset not loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected taskFailed(Lcom/badlogic/gdx/assets/AssetDescriptor;Ljava/lang/RuntimeException;)V
    .locals 0

    .line 595
    throw p2
.end method

.method public declared-synchronized unload(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    .line 204
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;

    .line 209
    iget-object v2, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unload (from tasks): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 211
    iput-boolean v1, v0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    .line 212
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->unload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v2, 0x0

    .line 221
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    .line 222
    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v4, :cond_4

    .line 228
    iget v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/badlogic/gdx/assets/AssetManager;->toLoad:I

    .line 229
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 230
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unload (from queue): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 233
    iget-object p1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    if-eqz p1, :cond_3

    iget-object p1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    if-eqz p1, :cond_3

    .line 234
    iget-object p1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    iget-object p1, p1, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    iget-object v0, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->type:Ljava/lang/Class;

    invoke-interface {p1, p0, v0, v1}, Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;->finishedLoading(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    if-eqz v0, :cond_a

    .line 240
    :try_start_2
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/assets/RefCountedContainer;

    .line 243
    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->decRefCount()V

    .line 244
    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getRefCount()I

    move-result v2

    if-gtz v2, :cond_6

    .line 245
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unload (dispose): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 248
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/badlogic/gdx/utils/Disposable;

    if-eqz v2, :cond_5

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Disposable;

    invoke-interface {v2}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 251
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetTypes:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->assets:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unload (decrement): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Logger;->info(Ljava/lang/String;)V

    .line 257
    :goto_2
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_8

    .line 259
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->isLoaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    goto :goto_3

    .line 263
    :cond_8
    invoke-virtual {v1}, Lcom/badlogic/gdx/assets/RefCountedContainer;->getRefCount()I

    move-result v0

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetManager;->assetDependencies:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    :cond_9
    monitor-exit p0

    return-void

    .line 238
    :cond_a
    :try_start_3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset not loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized update()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 406
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetManager;->nextTask()V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return v1

    .line 411
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetManager;->updateTask()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->tasks:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v2

    .line 413
    :try_start_2
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/assets/AssetManager;->handleTaskError(Ljava/lang/Throwable;)V

    .line 414
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetManager;->loadQueue:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public update(I)Z
    .locals 5

    .line 423
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 425
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetManager;->update()Z

    move-result p1

    if-nez p1, :cond_1

    .line 426
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    goto :goto_1

    .line 427
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/utils/async/ThreadUtils;->yield()V

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method
