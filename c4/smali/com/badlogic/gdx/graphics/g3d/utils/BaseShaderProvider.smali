.class public abstract Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;
.super Ljava/lang/Object;
.source "BaseShaderProvider.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/ShaderProvider;


# instance fields
.field protected shaders:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Shader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method protected abstract createShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
.end method

.method public dispose()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 47
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->dispose()V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public getShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
    .locals 3

    .line 30
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/Shader;

    .line 33
    invoke-interface {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 35
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->createShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;

    move-result-object v0

    .line 36
    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 37
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g3d/Shader;->init()V

    .line 38
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;->shaders:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0

    .line 36
    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "unable to provide a shader for this renderable"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
