package graph

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.
// Code generated by github.com/99designs/gqlgen version v0.17.22

import (
	"context"
	"crypto/rand"
	"fmt"
	"math/big"

	"github.com/hawkkiller/graphql_example/server/internal/graph/customTypes"
	"github.com/hawkkiller/graphql_example/server/internal/model"
)

// CreateTodo is the resolver for the createTodo field.
func (r *mutationResolver) CreateTodo(ctx context.Context, input customTypes.CreateTodoInput) (*model.Todo, error) {
	rand, _ := rand.Int(rand.Reader, big.NewInt(100))
	todo := &model.Todo{
		Text: input.Text,
		ID:   fmt.Sprintf("T%d", rand),
	}
	err := r.DB.Create(&model.Todo{Text: input.Text}).Error
	if err != nil {
		return nil, err
	}
	r.ChangesChan <- todo
	return todo, nil
}

// Todos is the resolver for the todos field.
func (r *queryResolver) Todos(ctx context.Context) ([]*model.Todo, error) {
	todos := []*model.Todo{}
	r.DB.Find(&todos)
	return todos, nil
}

// Todos is the resolver for the todos field.
func (r *subscriptionResolver) Todos(ctx context.Context) (<-chan []*model.Todo, error) {
	ch := make(chan []*model.Todo)

	go func() {
		todos := []*model.Todo{}
		r.DB.Find(&todos)
		ch <- todos
		for todo := range r.ChangesChan {
			todos = append(todos, todo.(*model.Todo))
			ch <- todos
		}
	}()
	return ch, nil
}

// Mutation returns MutationResolver implementation.
func (r *Resolver) Mutation() MutationResolver { return &mutationResolver{r} }

// Query returns QueryResolver implementation.
func (r *Resolver) Query() QueryResolver { return &queryResolver{r} }

// Subscription returns SubscriptionResolver implementation.
func (r *Resolver) Subscription() SubscriptionResolver { return &subscriptionResolver{r} }

type mutationResolver struct{ *Resolver }
type queryResolver struct{ *Resolver }
type subscriptionResolver struct{ *Resolver }
