.class public Lcom/dozingcatsoftware/bouncy/GLFieldView;
.super Landroid/opengl/GLSurfaceView;
.source "GLFieldView.java"


# instance fields
.field manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GLFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GLFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->handleKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/GLFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setManager(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/GLFieldView;->manager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    return-void
.end method
