.class Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;
.super Ljava/lang/Object;
.source "TextureAtlas.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;


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
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

.field final synthetic val$entry:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;->this$0:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;->val$entry:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;->val$entry:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetX:F

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;->val$entry:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetY:F

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;->val$entry:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;->val$entry:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    return-void
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$11;->parse(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)V

    return-void
.end method
