.class Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$14;
.super Ljava/lang/Object;
.source "TextureAtlas.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$14;->this$0:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)I
    .locals 2

    .line 433
    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    const v0, 0x7fffffff

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7fffffff

    .line 435
    :cond_0
    iget p2, p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 431
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$14;->compare(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)I

    move-result p1

    return p1
.end method
