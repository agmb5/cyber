.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Pool$Poolable;"
    }
.end annotation


# static fields
.field private static final bottomi:Ljava/lang/Integer;

.field private static final centeri:Ljava/lang/Integer;

.field private static defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private static files:Lcom/badlogic/gdx/Files;

.field private static final lefti:Ljava/lang/Integer;

.field private static final onef:Ljava/lang/Float;

.field private static final onei:Ljava/lang/Integer;

.field private static final righti:Ljava/lang/Integer;

.field private static final topi:Ljava/lang/Integer;

.field private static final zerof:Ljava/lang/Float;

.field private static final zeroi:Ljava/lang/Integer;


# instance fields
.field actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field actorHeight:F

.field actorWidth:F

.field actorX:F

.field actorY:F

.field align:Ljava/lang/Integer;

.field cellAboveIndex:I

.field colspan:Ljava/lang/Integer;

.field column:I

.field computedPadBottom:F

.field computedPadLeft:F

.field computedPadRight:F

.field computedPadTop:F

.field endRow:Z

.field expandX:Ljava/lang/Integer;

.field expandY:Ljava/lang/Integer;

.field fillX:Ljava/lang/Float;

.field fillY:Ljava/lang/Float;

.field maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field row:I

.field spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field uniformX:Ljava/lang/Boolean;

.field uniformY:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    .line 17
    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->topi:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottomi:Ljava/lang/Integer;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->lefti:Ljava/lang/Integer;

    const/16 v0, 0x10

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->righti:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 46
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    :cond_0
    return-void
.end method

.method public static defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2

    .line 992
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->files:Lcom/badlogic/gdx/Files;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-eq v0, v1, :cond_1

    .line 993
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->files:Lcom/badlogic/gdx/Files;

    .line 994
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 995
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 996
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 997
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 998
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 999
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1000
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1001
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1002
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1003
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1004
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1005
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1006
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1007
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1008
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 1009
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 1010
    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 1011
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 1012
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 1013
    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 1014
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 1015
    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 1016
    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    .line 1018
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 514
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 545
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottomi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 520
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->centeri:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    return-object p0
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 901
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 902
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 903
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 904
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 905
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 906
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 907
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 908
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 909
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 910
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 911
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 912
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 913
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 914
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 915
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 916
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 917
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 918
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 919
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 920
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 921
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 922
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    return-void
.end method

.method public clearActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    return-object p0
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 585
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 586
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    return-object p0
.end method

.method public expand(II)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 604
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    return-object p0
.end method

.method public expand(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 610
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 611
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zeroi:Ljava/lang/Integer;

    :goto_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    return-object p0
.end method

.method public expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 592
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    return-object p0
.end method

.method public expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 598
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 475
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    return-object p0
.end method

.method public fill(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 492
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 493
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    return-object p0
.end method

.method public fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 506
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    if-eqz p1, :cond_1

    .line 507
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    return-object p0
.end method

.method public fill(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 499
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    if-eqz p2, :cond_1

    .line 500
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->zerof:Ljava/lang/Float;

    :goto_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    return-object p0
.end method

.method public fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 481
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    return-object p0
.end method

.method public fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 487
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    return-object p0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getActorHeight()F
    .locals 1

    .line 683
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    return v0
.end method

.method public getActorWidth()F
    .locals 1

    .line 675
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    return v0
.end method

.method public getActorX()F
    .locals 1

    .line 659
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    return v0
.end method

.method public getActorY()F
    .locals 1

    .line 667
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    return v0
.end method

.method public getAlign()I
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColspan()I
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColumn()I
    .locals 1

    .line 691
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->column:I

    return v0
.end method

.method public getComputedPadBottom()F
    .locals 1

    .line 883
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadBottom:F

    return v0
.end method

.method public getComputedPadLeft()F
    .locals 1

    .line 878
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadLeft:F

    return v0
.end method

.method public getComputedPadRight()F
    .locals 1

    .line 888
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadRight:F

    return v0
.end method

.method public getComputedPadTop()F
    .locals 1

    .line 873
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->computedPadTop:F

    return v0
.end method

.method public getExpandX()I
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpandY()I
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFillX()F
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFillY()F
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMaxWidth()F
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinHeight()F
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinWidth()F
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadBottom()F
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPrefWidth()F
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 695
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row:I

    return v0
.end method

.method public getSpaceBottom()F
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceLeft()F
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceRight()F
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceTop()F
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public getUniformX()Z
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUniformY()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 563
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 564
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 565
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    return-object p0
.end method

.method public growX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 572
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    return-object p0
.end method

.method public growY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onei:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 579
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->onef:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    return-object p0
.end method

.method public hasActor()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 143
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 135
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 136
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 137
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "height cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEndRow()Z
    .locals 1

    .line 868
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    return v0
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 536
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->lefti:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public maxHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 300
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public maxHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 276
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 275
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxHeight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 282
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 288
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 252
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 253
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 261
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 262
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 294
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public maxWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 269
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxWidth cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method merge(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 961
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 962
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 963
    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 964
    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 965
    :cond_4
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 966
    :cond_5
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 967
    :cond_6
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 968
    :cond_7
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 969
    :cond_8
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_9

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 970
    :cond_9
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_a

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 971
    :cond_a
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 972
    :cond_b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 973
    :cond_c
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 974
    :cond_d
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 975
    :cond_e
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    if-eqz v0, :cond_f

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 976
    :cond_f
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    if-eqz v0, :cond_10

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 977
    :cond_10
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 978
    :cond_11
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 979
    :cond_12
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 980
    :cond_13
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 981
    :cond_14
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 982
    :cond_15
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    if-eqz p1, :cond_16

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    :cond_16
    return-void
.end method

.method public minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 194
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public minHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 172
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minHeight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 178
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public minSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 184
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 150
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 151
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 159
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 160
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public minWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 166
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minWidth cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 443
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 448
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p3

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 398
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 399
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 400
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 401
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pad cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 410
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 411
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 412
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 413
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 409
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "right cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "left cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 406
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "top cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 463
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 431
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 430
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padBottom cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 458
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 425
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 424
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padLeft cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 468
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 437
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 436
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padRight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 453
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 419
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 418
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padTop cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 245
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public prefHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 223
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prefHeight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public prefSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 229
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 201
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 202
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 210
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 211
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 240
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public prefWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 217
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prefWidth cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 928
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v0, 0x0

    .line 929
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->endRow:Z

    const/4 v0, -0x1

    .line 930
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->cellAboveIndex:I

    .line 931
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 554
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->righti:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public row()V
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method set(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .locals 1

    .line 935
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 936
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 937
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 938
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 939
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 940
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 941
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 942
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 943
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 944
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 945
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 946
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 947
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 948
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 949
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX:Ljava/lang/Float;

    .line 950
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY:Ljava/lang/Float;

    .line 951
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    .line 952
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX:Ljava/lang/Integer;

    .line 953
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY:Ljava/lang/Integer;

    .line 954
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->colspan:Ljava/lang/Integer;

    .line 955
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 956
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TA;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TA;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    return-object p0
.end method

.method public setActorBounds(FFFF)V
    .locals 0

    .line 652
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    .line 653
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    .line 654
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    .line 655
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    return-void
.end method

.method public setActorHeight(F)V
    .locals 0

    .line 687
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorHeight:F

    return-void
.end method

.method public setActorWidth(F)V
    .locals 0

    .line 679
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorWidth:F

    return-void
.end method

.method public setActorX(F)V
    .locals 0

    .line 663
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorX:F

    return-void
.end method

.method public setActorY(F)V
    .locals 0

    .line 671
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actorY:F

    return-void
.end method

.method public setTable(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->table:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-void
.end method

.method public size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 107
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 113
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 84
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 85
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 87
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 88
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 96
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 97
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 98
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 99
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 100
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 101
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 353
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "space cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    .line 363
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p3

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0

    .line 362
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right cannot be < 0: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bottom cannot be < 0: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "left cannot be < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "top cannot be < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 307
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 308
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 309
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 310
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 306
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "space cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 319
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 320
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 321
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 322
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 318
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "right cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "left cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "top cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 384
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceBottom cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 340
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spaceBottom cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spaceLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 377
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceLeft cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 334
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 333
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spaceLeft cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spaceRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 391
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceRight cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 346
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 345
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spaceRight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spaceTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 370
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceTop cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 328
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->spaceTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 327
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spaceTop cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 527
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->topi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->align:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public uniform()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 622
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 623
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uniform(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 640
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 641
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uniform(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 646
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    .line 647
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uniformX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 629
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformX:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uniformY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 635
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->uniformY:Ljava/lang/Boolean;

    return-object p0
.end method

.method public width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 120
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 121
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 122
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "width cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
