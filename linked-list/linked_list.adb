with Ada.Text_IO; use Ada.Text_IO;

procedure Linked_List is
   type Node;
   type Node_Ptr is access Node;
   type Node is record
      Data : Integer;
      Next : Node_Ptr;
   end record;

   Head : Node_Ptr := null;

   procedure Append (Data : Integer) is
      New_Node : Node_Ptr := new Node'(Data => Data, Next => null);
      Current  : Node_Ptr := Head;
   begin
      if Head = null then
         Head := New_Node;
      else
         while Current.Next /= null loop
            Current := Current.Next;
         end loop;
         Current.Next := New_Node;
      end if;
   end Append;

   procedure Print_List is
      Current : Node_Ptr := Head;
   begin
      while Current /= null loop
         Put (Integer'Image (Current.Data));
         Current := Current.Next;
      end loop;
      New_Line;
   end Print_List;

begin
   Append (1);
   Append (2);
   Append (3);
   Append (4);
   Print_List;
end Linked_List;
