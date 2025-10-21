.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
.super Ljava/lang/Object;
.source "Skin.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;
    }
.end annotation


# static fields
.field private static final defaultTagClasses:[Ljava/lang/Class;


# instance fields
.field atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field private final jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field resources:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 612
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v2, v1

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 66
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 6

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v2, v1

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 66
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".atlas"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 80
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 6

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v2, v1

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 66
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 90
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 6

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v2, v1

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 66
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 98
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    return-void
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Method;
    .locals 4

    .line 621
    invoke-static {p0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getMethods(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Method;

    move-result-object p0

    .line 622
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 623
    aget-object v2, p0, v1

    .line 624
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v0, :cond_2

    .line 132
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eq p3, v1, :cond_1

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eq p3, v1, :cond_1

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x100

    :goto_1
    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    .line 133
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 129
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "resource cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 6

    .line 112
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    .line 113
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 114
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 115
    iget-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 116
    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_0
    const-class v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v3, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->dispose()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 454
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 455
    instance-of v3, v2, Lcom/badlogic/gdx/utils/Disposable;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/badlogic/gdx/utils/Disposable;

    invoke-interface {v2}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 340
    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->findKey(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 337
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "default"

    .line 147
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
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

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    .line 156
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    return-object p1

    .line 157
    :cond_0
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p1

    return-object p1

    .line 158
    :cond_1
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object p1

    return-object p1

    .line 159
    :cond_2
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object p1

    return-object p1

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, " registered with name: "

    const-string v2, "No "

    if-eqz v0, :cond_5

    .line 163
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 164
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_5
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAll(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap;

    return-object p1
.end method

.method public getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object v0
.end method

.method public getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 190
    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method public getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 5

    .line 293
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 298
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 299
    instance-of v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v2, :cond_3

    .line 300
    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    const-string v3, "split"

    .line 301
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->findValue(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    .line 302
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 303
    :cond_1
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-nez v3, :cond_2

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-eq v3, v2, :cond_3

    .line 304
    :cond_2
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 307
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    :try_start_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    move-object v0, v2

    goto :goto_2

    :catch_1
    nop

    :cond_5
    :goto_2
    if-nez v0, :cond_8

    .line 315
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_6

    .line 317
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    :goto_3
    move-object v0, v1

    goto :goto_4

    .line 319
    :cond_6
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    if-eqz v0, :cond_7

    .line 321
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    goto :goto_3

    .line 323
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Drawable, NinePatch, TextureRegion, Texture, or Sprite registered with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_8
    :goto_4
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    .line 330
    :cond_9
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    .line 194
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object p1
.end method

.method public getJsonClassTags()Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method protected getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;
    .locals 3

    .line 462
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    const/4 v1, 0x0

    .line 498
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setTypeName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 499
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Json;->setUsePrototypes(Z)V

    .line 501
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;

    invoke-direct {v2, p0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 532
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;

    invoke-direct {v2, p0, p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 572
    const-class p1, Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 585
    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 599
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 600
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->addClassTag(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .locals 12

    .line 245
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-eqz v0, :cond_0

    return-object v0

    .line 249
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    .line 250
    instance-of v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v1, :cond_1

    .line 251
    move-object v1, v7

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    const-string v2, "split"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->findValue(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 253
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/4 v8, 0x0

    aget v3, v1, v8

    const/4 v9, 0x1

    aget v4, v1, v9

    const/4 v10, 0x2

    aget v5, v1, v10

    const/4 v11, 0x3

    aget v6, v1, v11

    move-object v1, v0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 254
    move-object v1, v7

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    const-string v2, "pad"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->findValue(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 255
    aget v2, v1, v8

    int-to-float v2, v2

    aget v3, v1, v9

    int-to-float v3, v3

    aget v4, v1, v10

    int-to-float v4, v4

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setPadding(FFFF)V

    :cond_1
    if-nez v0, :cond_2

    .line 258
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 259
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->scale(FF)V

    .line 260
    :cond_3
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 263
    :catch_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No NinePatch, TextureRegion, or Texture registered with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3

    .line 200
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    return-object v0

    .line 203
    :cond_0
    const-class v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_1

    .line 205
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 206
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v1

    .line 204
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No TextureRegion or Texture registered with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    .line 216
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v3, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .locals 5

    .line 271
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    if-eqz v0, :cond_0

    return-object v0

    .line 275
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 276
    instance-of v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v2, :cond_2

    .line 277
    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 278
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-nez v3, :cond_1

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-eq v3, v4, :cond_2

    .line 279
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    :cond_2
    if-nez v0, :cond_3

    .line 281
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 282
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float v1, v1, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 283
    :cond_4
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 286
    :catch_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No NinePatch, TextureRegion, or Texture registered with name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTiledDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    .locals 3

    .line 228
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 232
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setName(Ljava/lang/String;)V

    .line 233
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 235
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setScale(F)V

    .line 237
    :cond_1
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0
.end method

.method public has(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 181
    :cond_0
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 4

    .line 104
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3

    .line 360
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    return-object v0

    .line 361
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    return-object v0

    .line 362
    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;)V

    return-object v0

    .line 363
    :cond_2
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;)V

    return-object v0

    .line 364
    :cond_3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to copy, unknown drawable type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 369
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 5

    .line 375
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-eqz v0, :cond_0

    .line 376
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v0, :cond_1

    .line 378
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_1
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    if-eqz v0, :cond_4

    .line 380
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    move-result-object v0

    .line 384
    :goto_0
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v1, :cond_3

    .line 385
    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    .line 386
    instance-of v2, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    const-string v3, ")"

    const-string v4, " ("

    if-eqz v2, :cond_2

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 389
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0

    .line 382
    :cond_4
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to copy, unknown drawable type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public newDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public newDrawable(Ljava/lang/String;FFFF)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 350
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public newDrawable(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 0

    .line 355
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/utils/ObjectMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_0
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 172
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 141
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scale(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2

    .line 399
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float v0, v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    .line 400
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float v0, v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    .line 401
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float v0, v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setBottomHeight(F)V

    .line 402
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float v0, v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setTopHeight(F)V

    .line 403
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float v0, v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    .line 404
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float v0, v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinHeight(F)V

    return-void
.end method

.method public setEnabled(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 6

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStyle"

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 427
    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->find(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 434
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-disabled"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    move-object v4, v5

    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 435
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setStyle"

    invoke-static {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 440
    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/utils/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    return-void
.end method
