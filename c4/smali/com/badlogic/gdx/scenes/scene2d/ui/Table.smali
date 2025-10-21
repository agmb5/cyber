.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;
    }
.end annotation


# static fields
.field public static backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public static backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field static final cellPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private static columnWeightedWidth:[F

.field public static debugActorColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugCellColor:Lcom/badlogic/gdx/graphics/Color;

.field public static debugTableColor:Lcom/badlogic/gdx/graphics/Color;

.field private static rowWeightedHeight:[F


# instance fields
.field align:I

.field background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private final cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private final cells:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private clip:Z

.field private final columnDefaults:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private columnMinWidth:[F

.field private columnPrefWidth:[F

.field private columnWidth:[F

.field private columns:I

.field debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field debugRects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;",
            ">;"
        }
    .end annotation
.end field

.field private expandHeight:[F

.field private expandWidth:[F

.field private implicitEndRow:Z

.field padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field round:Z

.field private rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private rowHeight:[F

.field private rowMinHeight:[F

.field private rowPrefHeight:[F

.field private rows:I

.field private sizeInvalid:Z

.field private skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private tableMinHeight:F

.field private tableMinWidth:F

.field private tablePrefHeight:F

.field private tablePrefWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$1;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    .line 1282
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1291
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1300
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1309
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$5;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    .line 65
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 76
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 77
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 79
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 85
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    .line 93
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 95
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 98
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method

.method private addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    .line 1213
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1214
    iput-object p5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 1215
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result p5

    sub-float/2addr p5, p2

    sub-float/2addr p5, p4

    invoke-virtual {v0, p1, p5, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 1216
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private addDebugRects(FFFF)V
    .locals 13

    move-object v6, p0

    .line 1173
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    .line 1174
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1175
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v4

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1176
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugTableColor:Lcom/badlogic/gdx/graphics/Color;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    const/4 v0, 0x0

    .line 1179
    iget-object v1, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v7, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v10, p1

    move v8, p2

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_8

    .line 1180
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1183
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_2

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_3

    .line 1184
    :cond_2
    iget v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v3, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    iget v4, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugActorColor:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    const/4 v0, 0x0

    .line 1188
    iget v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    :goto_1
    if-ge v1, v2, :cond_4

    .line 1189
    iget-object v3, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    aget v3, v3, v1

    add-float/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1190
    :cond_4
    iget v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v2, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v1, v2

    sub-float v12, v0, v1

    .line 1191
    iget v0, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float/2addr v10, v0

    .line 1192
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_5

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, v1, :cond_6

    .line 1193
    :cond_5
    iget v0, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float v2, v8, v0

    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    iget v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v0, v0, v1

    iget v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v0, v1

    iget v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float v4, v0, v1

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugCellColor:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v1, v10

    move v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRect(FFFFLcom/badlogic/gdx/graphics/Color;)V

    .line 1197
    :cond_6
    iget-boolean v0, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v0, :cond_7

    .line 1199
    iget-object v0, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    iget v1, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v0, v0, v1

    add-float/2addr v8, v0

    move v10, p1

    goto :goto_2

    .line 1201
    :cond_7
    iget v0, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v12, v0

    add-float/2addr v10, v12

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method private clearDebugRects()V
    .locals 2

    .line 1206
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    .line 1207
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 1208
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method private computeSize()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 782
    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 784
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 785
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-lez v3, :cond_0

    add-int/lit8 v5, v3, -0x1

    .line 788
    aget-object v5, v2, v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-nez v5, :cond_0

    .line 789
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 790
    iput-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 793
    :cond_0
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 794
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    invoke-direct {v0, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v7

    iput-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    .line 795
    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    invoke-direct {v0, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v8

    iput-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    .line 796
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    invoke-direct {v0, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v9

    iput-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    .line 797
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    invoke-direct {v0, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v10

    iput-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    .line 798
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    invoke-direct {v0, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    .line 799
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    invoke-direct {v0, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    .line 800
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    invoke-direct {v0, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v11

    iput-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    .line 801
    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    invoke-direct {v0, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v12

    iput-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v3, :cond_d

    .line 805
    aget-object v16, v2, v14

    move-object/from16 v1, v16

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 806
    iget v4, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget v13, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    move/from16 v18, v3

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v19, v14

    .line 807
    iget-object v14, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-object/from16 v20, v8

    .line 810
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_1

    aget v8, v12, v13

    const/16 v17, 0x0

    cmpl-float v8, v8, v17

    if-nez v8, :cond_1

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    aput v8, v12, v13

    :cond_1
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    .line 811
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_2

    aget v8, v11, v4

    const/16 v17, 0x0

    cmpl-float v8, v8, v17

    if-nez v8, :cond_2

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    aput v8, v11, v4

    .line 815
    :cond_2
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    move-object/from16 v21, v12

    if-nez v4, :cond_3

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    sub-float/2addr v12, v15

    const/4 v15, 0x0

    invoke-static {v15, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    :goto_1
    add-float/2addr v8, v12

    iput v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    .line 816
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    iput v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    .line 817
    iget v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    const/4 v12, -0x1

    if-eq v8, v12, :cond_4

    .line 818
    iget v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    aget-object v8, v2, v8

    check-cast v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 819
    iget v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget-object v15, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    sub-float/2addr v15, v8

    const/4 v8, 0x0

    invoke-static {v8, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    add-float/2addr v12, v15

    iput v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    .line 821
    :cond_4
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    .line 822
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    add-int v12, v4, v3

    if-ne v12, v5, :cond_5

    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    move v12, v15

    :goto_2
    add-float/2addr v8, v12

    iput v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    .line 823
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    add-int/lit8 v12, v6, -0x1

    if-ne v13, v12, :cond_6

    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    :goto_3
    add-float/2addr v8, v12

    iput v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    .line 827
    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    iget-object v12, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    move/from16 v22, v15

    .line 828
    iget-object v15, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v15

    move/from16 v23, v6

    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    move/from16 v24, v5

    .line 829
    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v5, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    move-object/from16 v25, v11

    iget-object v11, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v11

    cmpg-float v14, v8, v15

    if-gez v14, :cond_7

    move v8, v15

    :cond_7
    cmpg-float v14, v12, v6

    if-gez v14, :cond_8

    move v12, v6

    :cond_8
    const/4 v14, 0x0

    cmpl-float v17, v5, v14

    if-lez v17, :cond_9

    cmpl-float v17, v8, v5

    if-lez v17, :cond_9

    goto :goto_4

    :cond_9
    move v5, v8

    :goto_4
    cmpl-float v8, v11, v14

    if-lez v8, :cond_a

    cmpl-float v8, v12, v11

    if-lez v8, :cond_a

    goto :goto_5

    :cond_a
    move v11, v12

    .line 834
    :goto_5
    iget-boolean v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    if-eqz v8, :cond_b

    float-to-double v14, v15

    .line 835
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v15, v14

    move v8, v15

    float-to-double v14, v6

    .line 836
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v6, v14

    float-to-double v14, v5

    .line 837
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v5, v14

    float-to-double v11, v11

    .line 838
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-float v11, v11

    move v15, v8

    :cond_b
    const/4 v8, 0x1

    if-ne v3, v8, :cond_c

    .line 842
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v3, v8

    .line 843
    aget v8, v9, v4

    add-float/2addr v5, v3

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v9, v4

    .line 844
    aget v5, v7, v4

    add-float/2addr v15, v3

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v7, v4

    .line 846
    :cond_c
    iget v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v3, v1

    .line 847
    aget v1, v10, v13

    add-float/2addr v11, v3

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v10, v13

    .line 848
    aget v1, v20, v13

    add-float/2addr v6, v3

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v20, v13

    add-int/lit8 v14, v19, 0x1

    move/from16 v3, v18

    move-object/from16 v8, v20

    move-object/from16 v12, v21

    move/from16 v15, v22

    move/from16 v6, v23

    move/from16 v5, v24

    move-object/from16 v11, v25

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    move/from16 v24, v5

    move/from16 v23, v6

    move-object/from16 v20, v8

    move-object/from16 v25, v11

    move v6, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_13

    .line 854
    aget-object v11, v2, v8

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 855
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 858
    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eqz v13, :cond_10

    .line 861
    iget-object v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v12

    move v15, v12

    :goto_7
    if-ge v15, v14, :cond_f

    .line 863
    aget v18, v25, v15

    const/16 v17, 0x0

    cmpl-float v18, v18, v17

    if-eqz v18, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_f
    move v15, v12

    :goto_8
    if-ge v15, v14, :cond_10

    move/from16 v18, v14

    int-to-float v14, v13

    .line 865
    aput v14, v25, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v18

    goto :goto_8

    .line 869
    :cond_10
    :goto_9
    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v13, v14, :cond_11

    iget-object v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    .line 870
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v13, v14

    .line 871
    aget v14, v7, v12

    sub-float/2addr v14, v13

    invoke-static {v4, v14}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 872
    aget v12, v9, v12

    sub-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 874
    :cond_11
    iget-object v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v12, v13, :cond_12

    .line 875
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v12, v13

    .line 876
    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v13, v20, v13

    sub-float/2addr v13, v12

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 877
    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v11, v10, v11

    sub-float/2addr v11, v12

    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_13
    const/4 v8, 0x0

    cmpl-float v11, v1, v8

    if-gtz v11, :cond_14

    cmpl-float v11, v3, v8

    if-lez v11, :cond_17

    :cond_14
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v6, :cond_17

    .line 884
    aget-object v12, v2, v11

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    cmpl-float v13, v1, v8

    if-lez v13, :cond_15

    .line 885
    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v13, :cond_15

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_15

    .line 886
    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v8, v13

    .line 887
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-float v14, v4, v8

    aput v14, v7, v13

    .line 888
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-float/2addr v8, v1

    aput v8, v9, v13

    :cond_15
    const/4 v8, 0x0

    cmpl-float v13, v3, v8

    if-lez v13, :cond_16

    .line 890
    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v13, :cond_16

    .line 891
    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    add-float/2addr v8, v13

    .line 892
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-float v14, v5, v8

    aput v14, v20, v13

    .line 893
    iget v12, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-float/2addr v8, v3

    aput v8, v10, v12

    :cond_16
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto :goto_a

    :cond_17
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v6, :cond_1f

    .line 900
    aget-object v3, v2, v1

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 901
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    const/4 v3, 0x0

    goto/16 :goto_10

    .line 903
    :cond_18
    iget v8, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 905
    iget-object v11, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 906
    iget-object v12, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v12

    iget-object v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v13

    iget-object v14, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v11

    cmpg-float v14, v13, v12

    if-gez v14, :cond_19

    move v13, v12

    :cond_19
    const/4 v14, 0x0

    cmpl-float v15, v11, v14

    if-lez v15, :cond_1a

    cmpl-float v14, v13, v11

    if-lez v14, :cond_1a

    goto :goto_c

    :cond_1a
    move v11, v13

    .line 909
    :goto_c
    iget-boolean v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    if-eqz v13, :cond_1b

    float-to-double v12, v12

    .line 910
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-float v12, v12

    float-to-double v13, v11

    .line 911
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v11, v13

    .line 914
    :cond_1b
    iget v13, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v13, v3

    neg-float v3, v13

    add-int v13, v8, v4

    move v14, v3

    move v5, v8

    const/4 v15, 0x0

    :goto_d
    if-ge v5, v13, :cond_1c

    .line 917
    aget v18, v7, v5

    add-float v3, v3, v18

    .line 918
    aget v18, v9, v5

    add-float v14, v14, v18

    .line 919
    aget v18, v25, v5

    add-float v15, v15, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1c
    sub-float/2addr v12, v3

    const/4 v3, 0x0

    .line 922
    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v11, v14

    .line 923
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    :goto_e
    if-ge v8, v13, :cond_1e

    cmpl-float v12, v15, v3

    if-nez v12, :cond_1d

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v14, v4

    div-float/2addr v12, v14

    goto :goto_f

    .line 925
    :cond_1d
    aget v12, v25, v8

    div-float/2addr v12, v15

    .line 926
    :goto_f
    aget v14, v7, v8

    mul-float v17, v5, v12

    add-float v14, v14, v17

    aput v14, v7, v8

    .line 927
    aget v14, v9, v8

    mul-float v12, v12, v11

    add-float/2addr v14, v12

    aput v14, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1e
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 932
    :cond_1f
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    .line 933
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    add-float/2addr v2, v3

    .line 934
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 935
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    move/from16 v1, v24

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_20

    .line 937
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    aget v5, v7, v3

    add-float/2addr v4, v5

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    .line 938
    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    aget v5, v9, v3

    add-float/2addr v4, v5

    iput v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 940
    :cond_20
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 941
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    move/from16 v2, v23

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_21

    .line 943
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    aget v4, v20, v1

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    .line 944
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    aget v4, v20, v1

    aget v5, v10, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 946
    :cond_21
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 947
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    return-void
.end method

.method private drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 8

    .line 1249
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getDebug()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1250
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 1251
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1253
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1254
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v1

    .line 1255
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 1257
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v2, v3, :cond_3

    .line 1258
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugRects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;

    .line 1259
    iget-object v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1260
    iget v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->x:F

    add-float/2addr v5, v1

    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->y:F

    add-float/2addr v6, v0

    iget v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->width:F

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$DebugRect;->height:F

    invoke-virtual {p1, v5, v6, v7, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private endRow()V
    .locals 6

    .line 386
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 389
    aget-object v4, v0, v1

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 390
    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v5, :cond_0

    goto :goto_1

    .line 391
    :cond_0
    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 393
    :cond_1
    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 394
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 395
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    return-void
.end method

.method private ensureSize([FI)[F
    .locals 2

    if-eqz p1, :cond_1

    .line 776
    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 777
    invoke-static {p1, v0, p2, v1}, Ljava/util/Arrays;->fill([FIIF)V

    return-object p1

    .line 776
    :cond_1
    :goto_0
    new-array p1, p2, [F

    return-object p1
.end method

.method private obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .line 102
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 103
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setTable(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    return-object v0
.end method


# virtual methods
.method public add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2

    const/4 v0, 0x0

    .line 299
    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 214
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 217
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 218
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 219
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 220
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_4

    .line 226
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 227
    iget-boolean v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-nez v4, :cond_1

    .line 228
    iget v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 229
    iget v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    goto :goto_0

    .line 231
    :cond_1
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 232
    iget v2, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 235
    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    if-lez v2, :cond_5

    .line 236
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 239
    aget-object v3, v2, v1

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 240
    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    :goto_2
    if-ge v4, v3, :cond_3

    .line 241
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    if-ne v4, v5, :cond_2

    .line 242
    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 249
    :cond_4
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    .line 250
    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    .line 252
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 255
    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_6

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    .line 256
    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    if-eqz p1, :cond_7

    .line 258
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_7
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Table must have a skin set to use this method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    .line 279
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Table must have a skin set to use this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    invoke-direct {v1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Table must have a skin set to use this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1

    .line 293
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Table must have a skin set to use this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 3

    .line 264
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 265
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 562
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-object p0
.end method

.method public background(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Ljava/lang/String;)V

    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 588
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    .line 589
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    const/4 v0, 0x1

    .line 568
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public clearChildren()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 335
    aget-object v2, v0, v1

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 336
    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 339
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 340
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v1, 0x0

    .line 341
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 342
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    .line 343
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 345
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 347
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clearChildren()V

    return-void
.end method

.method public clip()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setClip(Z)V

    return-object p0
.end method

.method public clip(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setClip(Z)V

    return-object p0
.end method

.method public columnDefaults(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 405
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_2

    .line 406
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v2, p1, :cond_1

    .line 407
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public bridge synthetic debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 605
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p0
.end method

.method public debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 646
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 647
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, p1, :cond_2

    .line 648
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 649
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne p1, v0, :cond_1

    .line 650
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearDebugRects()V

    goto :goto_1

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public debugActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    const/4 v0, 0x1

    .line 636
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    .line 638
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->actor:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 639
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    return-object v0
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 610
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public debugCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    const/4 v0, 0x1

    .line 626
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 627
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    .line 628
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->cell:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 629
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public debugTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 2

    const/4 v0, 0x1

    .line 616
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setDebug(Z)V

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v1, :cond_0

    .line 618
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 619
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 5

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->validate()V

    .line 109
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 112
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 116
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 115
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 118
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 119
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 123
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getY()F

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 126
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :goto_1
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .locals 10

    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 135
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 136
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v9

    move-object v5, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 5

    .line 1220
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1221
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1222
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1223
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_1

    .line 1224
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 1225
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    .line 1226
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1227
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    .line 1228
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    .line 1229
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v3

    sub-float/2addr v0, v4

    .line 1230
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1232
    :goto_0
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipBegin(FFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1233
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1234
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clipEnd()V

    goto :goto_1

    .line 1237
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1238
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_2

    .line 1240
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->drawDebugRects(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1241
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :goto_2
    return-void
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 0

    return-void
.end method

.method public getAlign()I
    .locals 1

    .line 704
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TT;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 419
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_1

    .line 420
    aget-object v3, v0, v1

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 421
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 417
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getCells()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getClip()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    return v0
.end method

.method public getColumnMinWidth(I)F
    .locals 1

    .line 765
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    aget p1, v0, p1

    return p1
.end method

.method public getColumnPrefWidth(I)F
    .locals 1

    .line 771
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    aget p1, v0, p1

    return p1
.end method

.method public getColumnWidth(I)F
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 760
    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public getColumns()I
    .locals 1

    .line 736
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 452
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 447
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .line 439
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 440
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    .line 441
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    .line 432
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 433
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    .line 434
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public getRow(F)I
    .locals 8

    .line 710
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v2

    add-float/2addr p1, v2

    .line 713
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v5, v3, 0x1

    .line 715
    aget-object v3, v2, v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 716
    iget v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v7, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v6, v7

    cmpg-float v6, v6, p1

    if-gez v6, :cond_1

    return v4

    .line 717
    :cond_1
    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getRowHeight(I)F
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 742
    :cond_0
    aget p1, v0, p1

    return p1
.end method

.method public getRowMinHeight(I)F
    .locals 1

    .line 747
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    aget p1, v0, p1

    return p1
.end method

.method public getRowPrefHeight(I)F
    .locals 1

    .line 753
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    aget p1, v0, p1

    return p1
.end method

.method public getRows()I
    .locals 1

    .line 732
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    return v0
.end method

.method public getSkin()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method public getTableDebug()Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3

    .line 176
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    :cond_1
    return-object v0

    .line 180
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    .line 208
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    return-void
.end method

.method public layout()V
    .locals 30

    move-object/from16 v0, p0

    .line 953
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->computeSize()V

    .line 955
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getWidth()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getHeight()F

    move-result v2

    .line 956
    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columns:I

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rows:I

    .line 957
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWidth:[F

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowHeight:[F

    .line 958
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    iget-object v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    add-float/2addr v8, v7

    .line 959
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    add-float/2addr v10, v9

    .line 963
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefWidth:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinWidth:F

    sub-float/2addr v11, v12

    const/4 v14, 0x0

    cmpl-float v15, v11, v14

    if-nez v15, :cond_1

    .line 965
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    move/from16 v17, v9

    goto :goto_1

    :cond_1
    sub-float v12, v1, v12

    .line 967
    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 968
    sget-object v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    invoke-direct {v0, v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v15

    sput-object v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnWeightedWidth:[F

    .line 969
    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnMinWidth:[F

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnPrefWidth:[F

    move/from16 v17, v9

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_2

    .line 971
    aget v18, v14, v9

    aget v19, v13, v9

    sub-float v18, v18, v19

    div-float v18, v18, v11

    .line 973
    aget v19, v13, v9

    mul-float v18, v18, v12

    add-float v19, v19, v18

    aput v19, v15, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move-object v11, v15

    .line 978
    :goto_1
    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tablePrefHeight:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float/2addr v9, v12

    const/4 v12, 0x0

    cmpl-float v13, v9, v12

    if-nez v13, :cond_3

    .line 980
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    move/from16 v18, v7

    goto :goto_3

    .line 982
    :cond_3
    sget-object v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    invoke-direct {v0, v13, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->ensureSize([FI)[F

    move-result-object v13

    sput-object v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowWeightedHeight:[F

    .line 983
    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->tableMinHeight:F

    sub-float v14, v2, v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 984
    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowMinHeight:[F

    iget-object v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowPrefHeight:[F

    move/from16 v18, v7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_4

    .line 986
    aget v19, v15, v7

    aget v20, v14, v7

    sub-float v19, v19, v20

    div-float v19, v19, v9

    .line 988
    aget v20, v14, v7

    mul-float v19, v19, v12

    add-float v20, v20, v19

    aput v20, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object v9, v13

    .line 993
    :goto_3
    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 994
    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v12, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_b

    .line 996
    aget-object v15, v7, v13

    check-cast v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 997
    iget v14, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    move-object/from16 v20, v7

    iget v7, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    move/from16 v21, v12

    .line 998
    iget-object v12, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move/from16 v22, v2

    .line 1001
    iget-object v2, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v23, v10

    add-int v10, v14, v2

    move/from16 v25, v1

    move/from16 v24, v4

    move v1, v14

    const/4 v4, 0x0

    :goto_5
    if-ge v1, v10, :cond_5

    .line 1003
    aget v26, v11, v1

    add-float v4, v4, v26

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1004
    :cond_5
    aget v1, v9, v7

    .line 1006
    iget-object v10, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v10

    move-object/from16 v26, v9

    iget-object v9, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    move-object/from16 v27, v11

    .line 1007
    iget-object v11, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v11

    move/from16 v28, v8

    iget-object v8, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    move/from16 v29, v3

    .line 1008
    iget-object v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    iget-object v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    cmpg-float v12, v10, v11

    if-gez v12, :cond_6

    move v10, v11

    :cond_6
    cmpg-float v11, v9, v8

    if-gez v11, :cond_7

    move v9, v8

    :cond_7
    const/4 v8, 0x0

    cmpl-float v11, v3, v8

    if-lez v11, :cond_8

    cmpl-float v11, v10, v3

    if-lez v11, :cond_8

    goto :goto_6

    :cond_8
    move v3, v10

    :goto_6
    cmpl-float v10, v0, v8

    if-lez v10, :cond_9

    cmpl-float v8, v9, v0

    if-lez v8, :cond_9

    goto :goto_7

    :cond_9
    move v0, v9

    .line 1014
    :goto_7
    iget v8, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    sub-float v8, v4, v8

    iget v9, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    sub-float/2addr v8, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1015
    iget v3, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float v3, v1, v3

    iget v8, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v3, v8

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    const/4 v0, 0x1

    if-ne v2, v0, :cond_a

    .line 1017
    aget v0, v5, v14

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v5, v14

    .line 1018
    :cond_a
    aget v0, v6, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v6, v7

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v20

    move/from16 v12, v21

    move/from16 v2, v22

    move/from16 v10, v23

    move/from16 v4, v24

    move/from16 v1, v25

    move-object/from16 v9, v26

    move-object/from16 v11, v27

    move/from16 v8, v28

    move/from16 v3, v29

    goto/16 :goto_4

    :cond_b
    move/from16 v25, v1

    move/from16 v22, v2

    move/from16 v29, v3

    move/from16 v24, v4

    move-object/from16 v20, v7

    move/from16 v28, v8

    move/from16 v23, v10

    move-object/from16 v27, v11

    move/from16 v21, v12

    .line 1022
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandWidth:[F

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->expandHeight:[F

    move/from16 v4, v29

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_c

    .line 1025
    aget v8, v1, v7

    add-float/2addr v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    const/16 v16, 0x0

    cmpl-float v7, v3, v16

    if-lez v7, :cond_10

    sub-float v7, v25, v28

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v4, :cond_d

    .line 1029
    aget v9, v5, v8

    sub-float/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_d
    cmpl-float v8, v7, v16

    if-lez v8, :cond_10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_a
    if-ge v9, v4, :cond_f

    .line 1034
    aget v11, v1, v9

    cmpl-float v11, v11, v16

    if-nez v11, :cond_e

    goto :goto_b

    .line 1035
    :cond_e
    aget v10, v1, v9

    mul-float v10, v10, v7

    div-float/2addr v10, v3

    .line 1036
    aget v11, v5, v9

    add-float/2addr v11, v10

    aput v11, v5, v9

    add-float/2addr v8, v10

    move v10, v9

    :goto_b
    add-int/lit8 v9, v9, 0x1

    const/16 v16, 0x0

    goto :goto_a

    .line 1040
    :cond_f
    aget v1, v5, v10

    sub-float/2addr v7, v8

    add-float/2addr v1, v7

    aput v1, v5, v10

    :cond_10
    move/from16 v3, v24

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v3, :cond_11

    .line 1046
    aget v8, v2, v7

    add-float/2addr v1, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_11
    const/16 v16, 0x0

    cmpl-float v7, v1, v16

    if-lez v7, :cond_15

    sub-float v7, v22, v23

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v3, :cond_12

    .line 1050
    aget v9, v6, v8

    sub-float/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_12
    cmpl-float v8, v7, v16

    if-lez v8, :cond_15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_e
    if-ge v9, v3, :cond_14

    .line 1055
    aget v11, v2, v9

    cmpl-float v11, v11, v16

    if-nez v11, :cond_13

    goto :goto_f

    .line 1056
    :cond_13
    aget v10, v2, v9

    mul-float v10, v10, v7

    div-float/2addr v10, v1

    .line 1057
    aget v11, v6, v9

    add-float/2addr v11, v10

    aput v11, v6, v9

    add-float/2addr v8, v10

    move v10, v9

    :goto_f
    add-int/lit8 v9, v9, 0x1

    const/16 v16, 0x0

    goto :goto_e

    .line 1061
    :cond_14
    aget v1, v6, v10

    sub-float/2addr v7, v8

    add-float/2addr v1, v7

    aput v1, v6, v10

    :cond_15
    move/from16 v1, v21

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_19

    .line 1067
    aget-object v7, v20, v2

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1068
    iget-object v8, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    goto :goto_13

    .line 1072
    :cond_16
    iget v10, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-int v11, v10, v8

    const/4 v12, 0x0

    :goto_11
    if-ge v10, v11, :cond_17

    .line 1073
    aget v13, v27, v10

    aget v14, v5, v10

    sub-float/2addr v13, v14

    add-float/2addr v12, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 1074
    :cond_17
    iget v10, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v11, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    sub-float/2addr v12, v10

    int-to-float v10, v8

    div-float/2addr v12, v10

    cmpl-float v10, v12, v11

    if-lez v10, :cond_18

    .line 1078
    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    add-int/2addr v8, v7

    :goto_12
    if-ge v7, v8, :cond_18

    .line 1079
    aget v10, v5, v7

    add-float/2addr v10, v12

    aput v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_18
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_19
    move/from16 v7, v28

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v4, :cond_1a

    .line 1086
    aget v8, v5, v2

    add-float/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1a
    move/from16 v4, v23

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v3, :cond_1b

    .line 1088
    aget v8, v6, v2

    add-float/2addr v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1091
    :cond_1b
    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    and-int/lit8 v3, v2, 0x10

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v3, :cond_1c

    sub-float v3, v25, v7

    :goto_16
    add-float v3, v18, v3

    goto :goto_17

    :cond_1c
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_1d

    sub-float v3, v25, v7

    div-float/2addr v3, v8

    goto :goto_16

    :cond_1d
    move/from16 v3, v18

    :goto_17
    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_1e

    sub-float v2, v22, v4

    :goto_18
    add-float v9, v17, v2

    goto :goto_19

    :cond_1e
    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1f

    sub-float v2, v22, v4

    div-float/2addr v2, v8

    goto :goto_18

    :cond_1f
    move/from16 v9, v17

    :goto_19
    move v10, v3

    move v11, v9

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2c

    .line 1107
    aget-object v12, v20, v2

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 1110
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    iget-object v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v13

    const/4 v15, 0x0

    :goto_1b
    if-ge v13, v14, :cond_20

    .line 1111
    aget v17, v5, v13

    add-float v15, v15, v17

    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    .line 1112
    :cond_20
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v13, v14

    sub-float/2addr v15, v13

    .line 1114
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    add-float/2addr v10, v13

    .line 1116
    iget-object v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/16 v16, 0x0

    cmpl-float v17, v13, v16

    if-lez v17, :cond_21

    mul-float v13, v13, v15

    .line 1118
    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    move/from16 v21, v1

    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1119
    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    cmpl-float v8, v1, v16

    if-lez v8, :cond_22

    .line 1120
    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    goto :goto_1c

    :cond_21
    move/from16 v21, v1

    :cond_22
    :goto_1c
    cmpl-float v1, v14, v16

    if-lez v1, :cond_23

    .line 1123
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v1, v6, v1

    mul-float v1, v1, v14

    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    sub-float/2addr v1, v8

    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v1, v8

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1124
    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    const/4 v8, 0x0

    cmpl-float v13, v1, v8

    if-lez v13, :cond_24

    .line 1125
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    goto :goto_1d

    :cond_23
    const/4 v8, 0x0

    .line 1128
    :cond_24
    :goto_1d
    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v13, v1, 0x8

    if-eqz v13, :cond_25

    .line 1130
    iput v10, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_1e

    :cond_25
    and-int/lit8 v13, v1, 0x10

    if-eqz v13, :cond_26

    add-float v13, v10, v15

    .line 1132
    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float/2addr v13, v14

    iput v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    goto :goto_1e

    .line 1134
    :cond_26
    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    sub-float v13, v15, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v10

    iput v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    :goto_1e
    and-int/lit8 v13, v1, 0x2

    if-eqz v13, :cond_27

    .line 1137
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    :goto_1f
    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_20

    :cond_27
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_28

    .line 1139
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v1, v6, v1

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v1, v13

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    goto :goto_1f

    .line 1141
    :cond_28
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v1, v6, v1

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v1, v13

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    add-float/2addr v1, v13

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    sub-float/2addr v1, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    :goto_20
    sub-float v1, v22, v11

    .line 1142
    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    sub-float/2addr v1, v14

    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    sub-float/2addr v1, v14

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 1144
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    if-eqz v1, :cond_29

    .line 1145
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 1146
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-float v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    .line 1147
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 1148
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-float v1, v13

    iput v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 1151
    :cond_29
    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_2a

    iget-object v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v13, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    iget v14, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    iget v8, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    move-object/from16 v18, v5

    iget v5, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    invoke-virtual {v1, v13, v14, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_21

    :cond_2a
    move-object/from16 v18, v5

    .line 1153
    :goto_21
    iget-boolean v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v1, :cond_2b

    .line 1155
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    aget v1, v6, v1

    add-float/2addr v11, v1

    move v10, v3

    goto :goto_22

    .line 1157
    :cond_2b
    iget v1, v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    add-float/2addr v15, v1

    add-float/2addr v10, v15

    :goto_22
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v18

    move/from16 v1, v21

    const/high16 v8, 0x40000000    # 2.0f

    goto/16 :goto_1a

    .line 1161
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 1162
    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 1163
    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v13, 0x0

    :goto_23
    if-ge v13, v1, :cond_2e

    .line 1164
    aget-object v5, v2, v13

    .line 1165
    instance-of v6, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v6, :cond_2d

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_2d
    add-int/lit8 v13, v13, 0x1

    goto :goto_23

    .line 1169
    :cond_2e
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v1, v2, :cond_2f

    sub-float v7, v7, v28

    sub-float v4, v4, v23

    invoke-direct {v0, v3, v9, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addDebugRects(FFFF)V

    :cond_2f
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 581
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    .line 582
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 518
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 523
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 524
    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 525
    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 526
    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 527
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    .line 463
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 464
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 465
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 466
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 467
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 462
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pad cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 476
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 477
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 478
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 479
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 480
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 475
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "right cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 474
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 473
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "left cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 472
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "top cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 547
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 548
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    .line 503
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 504
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 502
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padBottom cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 540
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 541
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    .line 495
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 496
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 494
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padLeft cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 554
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 555
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    .line 511
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 512
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 510
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padRight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    .line 533
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 534
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    if-eqz p1, :cond_0

    .line 487
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 p1, 0x1

    .line 488
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->sizeInvalid:Z

    return-object p0

    .line 486
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padTop cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    const/4 v0, 0x1

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p1

    return p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 0

    .line 318
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 319
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 320
    iput-object p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 325
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    .line 326
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getCell(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 327
    iput-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_0
    return-object p1
.end method

.method public reset()V
    .locals 4

    .line 353
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clearChildren()V

    .line 354
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 355
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 356
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 357
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->backgroundRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 v0, 0x1

    .line 358
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    .line 359
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->reset()V

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 362
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v2, :cond_0

    .line 363
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->columnDefaults:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 595
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    .line 596
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method

.method public row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_2

    .line 372
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cells:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->endRow()V

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    :cond_2
    const/4 v0, 0x0

    .line 378
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->implicitEndRow:Z

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->cellPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 380
    :cond_3
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->obtainCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 381
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->clear()V

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->rowDefaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 9

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v3

    .line 151
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 152
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadTop()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadBottom()F

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->getPadRight()F

    move-result v6

    add-float v7, v0, v2

    add-float v8, p1, v5

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    add-float v7, v1, v3

    add-float v8, v4, v6

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float p1, v0, p1

    if-nez p1, :cond_2

    cmpl-float p1, v1, v4

    if-nez p1, :cond_2

    cmpl-float p1, v2, v5

    if-nez p1, :cond_2

    cmpl-float p1, v3, v6

    if-eqz p1, :cond_4

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    goto :goto_1

    .line 154
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidateHierarchy()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Table must have a skin set to use this method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setClip(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->clip:Z

    .line 198
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setTransform(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->invalidate()V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 601
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-void
.end method

.method public setRound(Z)V
    .locals 0

    .line 728
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->round:Z

    return-void
.end method

.method public setSkin(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->skin:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-void
.end method

.method public varargs stack([Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 307
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 308
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    return-object p1
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 574
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    .line 575
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->align:I

    return-object p0
.end method
