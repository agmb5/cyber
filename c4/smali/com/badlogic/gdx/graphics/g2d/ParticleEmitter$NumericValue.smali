.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumericValue"
.end annotation


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1282
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .line 1286
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;)V
    .locals 0

    .line 1306
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    .line 1307
    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1300
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    .line 1301
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->active:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "value"

    .line 1302
    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    return-void
.end method

.method public save(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1294
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    .line 1295
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->active:Z

    if-nez v0, :cond_0

    return-void

    .line 1296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(F)V
    .locals 0

    .line 1290
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;->value:F

    return-void
.end method
