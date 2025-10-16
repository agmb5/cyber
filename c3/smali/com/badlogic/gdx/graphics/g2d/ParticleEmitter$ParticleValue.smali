.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.super Ljava/lang/Object;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticleValue"
.end annotation


# instance fields
.field active:Z

.field alwaysActive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 1255
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    if-eqz v0, :cond_0

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

.method public isAlwaysActive()Z
    .locals 1

    .line 1251
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V
    .locals 1

    .line 1277
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    .line 1278
    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    if-nez v0, :cond_0

    const-string v0, "active"

    .line 1271
    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1273
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    :goto_0
    return-void
.end method

.method public save(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1263
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    if-nez v0, :cond_0

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1266
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    :goto_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 1259
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->active:Z

    return-void
.end method

.method public setAlwaysActive(Z)V
    .locals 0

    .line 1247
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->alwaysActive:Z

    return-void
.end method
