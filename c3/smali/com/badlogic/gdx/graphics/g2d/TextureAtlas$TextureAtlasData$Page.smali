.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# instance fields
.field public format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public height:F

.field public magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public pma:Z

.field public texture:Lcom/badlogic/gdx/graphics/Texture;

.field public textureFile:Lcom/badlogic/gdx/files/FileHandle;

.field public uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public useMipMaps:Z

.field public vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 482
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 483
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    return-void
.end method
