.class Ljwtc/android/chess/ics/CustomCommands$2;
.super Ljava/lang/Object;
.source "CustomCommands.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/CustomCommands;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/CustomCommands;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/CustomCommands;I)V
    .locals 0

    .line 81
    iput-object p1, p0, Ljwtc/android/chess/ics/CustomCommands$2;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iput p2, p0, Ljwtc/android/chess/ics/CustomCommands$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 84
    iget-object p2, p0, Ljwtc/android/chess/ics/CustomCommands$2;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iget-object p2, p2, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Ljwtc/android/chess/ics/CustomCommands$2;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iget-object v0, v0, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    iget v1, p0, Ljwtc/android/chess/ics/CustomCommands$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 85
    iget-object p2, p0, Ljwtc/android/chess/ics/CustomCommands$2;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    invoke-static {p2}, Ljwtc/android/chess/ics/CustomCommands;->access$000(Ljwtc/android/chess/ics/CustomCommands;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->invalidateViews()V

    .line 86
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
