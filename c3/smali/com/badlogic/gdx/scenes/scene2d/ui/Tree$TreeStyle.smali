.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TreeStyle"
.end annotation


# instance fields
.field public background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 1

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 887
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 889
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 890
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 892
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 893
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 894
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 881
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 882
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-void
.end method
