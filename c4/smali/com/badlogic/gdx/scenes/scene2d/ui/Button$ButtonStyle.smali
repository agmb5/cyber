.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
.super Ljava/lang/Object;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonStyle"
.end annotation


# instance fields
.field public checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public checkedDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public checkedFocused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public checkedOffsetX:F

.field public checkedOffsetY:F

.field public checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public focused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public pressedOffsetX:F

.field public pressedOffsetY:F

.field public unpressedOffsetX:F

.field public unpressedOffsetY:F

.field public up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .locals 1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 285
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 286
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 287
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->focused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->focused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 288
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->disabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 290
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 291
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 292
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedDown:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 293
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedFocused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedFocused:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 295
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetX:F

    .line 296
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->pressedOffsetY:F

    .line 297
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetX:F

    .line 298
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->unpressedOffsetY:F

    .line 299
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOffsetX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOffsetX:F

    .line 300
    iget p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOffsetY:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checkedOffsetY:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 279
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 280
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;->checked:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-void
.end method
