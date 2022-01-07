.class Lcom/chatman/o_/ChatmanSoundboard$2;
.super Ljava/lang/Object;
.source "ChatmanSoundboard.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chatman/o_/ChatmanSoundboard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chatman/o_/ChatmanSoundboard;


# direct methods
.method constructor <init>(Lcom/chatman/o_/ChatmanSoundboard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chatman/o_/ChatmanSoundboard$2;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard$2;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    long-to-int v1, p4

    const v2, 1
    sub-int v1, v1, v2

    invoke-static {v0, v1}, Lcom/chatman/o_/ChatmanSoundboard;->access$6(Lcom/chatman/o_/ChatmanSoundboard;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard$2;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v0}, Lcom/chatman/o_/ChatmanSoundboard;->access$69(Lcom/chatman/o_/ChatmanSoundboard;)V

    :cond_0

    return-void
.end method
